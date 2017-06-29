/*
 * jQuery Rebox [http://trentrichardson.com/examples/jQuery-Rebox]
 * By: Trent Richardson [http://trentrichardson.com]
 * 
 * Copyright 2014 Trent Richardson
 * Dual licensed under the MIT license.
 * http://trentrichardson.com/Impromptu/MIT-LICENSE.txt
 */

(function($){
	var cursor_flag=true,
			count=0;
		degree=0;
		s_h=0;
		s_w=0;

	$(document).ready(function(){
		var h=$(window).height();
		var w=$(window).width();
		s_h=h;
		s_w=w;
	});


	$.rebox = function($this, options){
		this.settings = $.extend(true, {}, $.rebox.defaults, options);
		this.$el = $this;      // parent container holding items
		this.$box = null;      // the lightbox modal
		this.$items = null;    // recomputed each time its opened
		this.idx = 0;          // of the $items which index are we on
		this.enable();
	};

	$.rebox.defaults = { 
		theme: 'rebox',        // class name parent gets (for your css)
		selector: null,        // the selector to delegate to, should be to the <a> which contains an <img>
		prev: '&larr;',        // use an image, text, whatever for the previous button
		next: '&rarr;',        // use an image, text, whatever for the next button
		loading: '%',          // use an image, text, whatever for the loading notification
		close: '&times;',      // use an image, text, whatever for the close button
		speed: 400,            // speed to fade in or out
		zIndex: 1000,          // zIndex to apply to the outer container
		cycle: true,           // whether to cycle through galleries or stop at ends
		captionAttr: 'title',  // name of the attribute to grab the caption from
		template: 'image',     // the default template to be used (see templates below)
		templates: {           // define templates to create the elements you need function($item, settings)
			image: function($item, settings, callback){
				return $('<img src="'+ $item.attr('href') +'" class="'+ settings.theme +'-content img-change" />').load(callback);
			}
		},
	};

	$.rebox.setDefaults = function(options){
		$.rebox.defaults = $.extend(true, {}, $.rebox.defaults,options);
	};
	
	$.rebox.lookup = { i: 0 };

	$.extend($.rebox.prototype, {
		enable: function(){
				var t = this;

				return t.$el.on('click.rebox', t.settings.selector, function(e){
					e.preventDefault();
					t.open(this);
				});
			},
		open: function(i){
				var t = this;

				// figure out where to start
				t.$items = t.settings.selector === null? t.$el : t.$el.find(t.settings.selector);
				if(isNaN(i)){
					i = t.$items.index(i);
				}
			    //var cursor_flag=true;	   // 判断鼠标指针
				// build the rebox
				t.$box = $('<div class="'+ t.settings.theme +'" style="display:none;">'+
							'<a href="#" class="'+ t.settings.theme +'-close '+ t.settings.theme +'-button">'+ '<i class="glyphicon glyphicon-remove"></i>' +'</a>' +
							'<a href="#" class="'+ t.settings.theme +'-prev '+ t.settings.theme +'-button">'+ '<i class="glyphicon glyphicon-chevron-left"></i>' +'</a>' +
							'<a href="#" class="'+ t.settings.theme +'-next '+ t.settings.theme +'-button">'+ '<i class="glyphicon glyphicon-chevron-right"></i>' +'</a>' +
							'<a href="#" class="'+ t.settings.theme +'-turn '+ t.settings.theme +'-button">'+ '<i class="glyphicon glyphicon-repeat"></i>' +'</a>' +
						'<div class="'+ t.settings.theme +'-contents"></div>'+
						'</div>').appendTo('body').css('zIndex',t.settings.zIndex).fadeIn(t.settings.speed)
						.on('click body','.img-change', function(e){ e.preventDefault(); t.change(e,cursor_flag); })
						.on('click.rebox','.'+t.settings.theme +'-turn', function(e){ e.preventDefault(); t.turn(); })
						.on('click.rebox','.'+t.settings.theme +'-close', function(e){ e.preventDefault(); t.close(); })
						.on('click.rebox','.'+t.settings.theme +'-next', function(e){ e.preventDefault(); t.next(); })
						.on('click.rebox','.'+t.settings.theme +'-prev', function(e){ e.preventDefault(); t.prev(); });
				// add some key hooks
				$(document).on('swipeLeft.rebox', function(e){ t.next(); })
					.on('swipeRight.rebox', function(e){ t.prev(); })
					.on('keydown.rebox', function(e){
							e.preventDefault();
							var key = (window.event) ? event.keyCode : e.keyCode;
							switch(key){
								case 27: t.close(); break; // escape key closes
								case 37: t.prev(); break;  // left arrow to prev
								case 39: t.next(); break;  // right arrow to next
							}
						});
				t.$el.trigger('rebox:open',[t]);
				t.goto(i);
			degree=0;
			return t.$el;
			},
		close: function(){
				var t = this;

				if(t.$box && t.$box.length){
					t.$box.fadeOut(t.settings.speed, function(e){
						t.$box.remove();
						t.$box = null;
						t.$el.trigger('rebox:close',[t]);
					});
				}
				$(document).off('.rebox');
				$('.rebox-content').css("transform","translate(-50%,-50%) rotate(0deg)");
				degree=0;
				return t.$el;
			},
		goto: function(i){
				var t = this,
					$item = $(t.$items[i]),
					captionVal = $item.attr(t.settings.captionAttr),
					$bi = t.$box.children('.'+ t.settings.theme +'-contents'),
					$img = null;
				if($item.length){
					t.idx = i;
					$bi.html('<div class="'+ t.settings.theme +'-loading '+ t.settings.theme +'-button">'+ t.settings.loading +'</div>');
					$img = t.settings.templates[$item.data('rebox-template') || t.settings.template]($item, t.settings, function(content){
                        var imgItem = $(this);
						var materialSrc = imgItem.attr('materialSrc');
						if (materialSrc && materialSrc != 'undefined' && materialSrc.length > 0) {
							$bi.empty().append('<div class="video-container"><strong> <i class="glyphicon glyphicon-play-circle"></i> </strong><img materialSrc="' + materialSrc + '" src="' + $(this).attr('src') + '" class="img-change"/><span></span></div>');
						} else {
							$bi.empty().append($(this));
							$bi.append('<div class="'+ t.settings.theme +'-caption"><p></p></div>');
							t.$box.children('.'+ t.settings.theme +'-contents').children('.'+ t.settings.theme +'-caption')[captionVal?'show':'hide']().children('p').text(captionVal);
							$img.css("cursor","url('/images/big.cur'),default");
							if (captionVal && degree !=0) {
								$('.' + t.settings.theme + '-contents img').css('padding-bottom', '108px');
							}
						}
					});
					if(t.$items.length == 1 || !t.settings.cycle){
						t.$box.children('.'+ t.settings.theme +'-prev')[i<=0 ? 'hide' : 'show']();
						t.$box.children('.'+ t.settings.theme +'-next')[i>=t.$items.length-1 ? 'hide' : 'show']();
					}
					t.$el.trigger('rebox:goto',[t, i, $item, $img]);
				}
				return t.$el;

		},
		prev: function(){
				var t = this;
				return t.goto(t.idx===0? t.$items.length-1 : t.idx-1);
			degree=0;
		},
		next: function(){
				var t = this;
				return t.goto(t.idx===t.$items.length-1? 0 : t.idx+1);
			degree=0;
		},
		turn: function(){
				degree=(degree==360)? 0:degree;
				degree+=90;
				$('.rebox-contents .rebox-content').css("transform","translate(-50%,-50%) rotate(" +degree+ "deg)");
				$('.img-bowlw').css("transform","translate(-50%,-50%) rotate(" +degree+ "deg)");
				$('.img-bowlh').css("transform","translate(-50%,-50%) rotate(" +degree+ "deg)");


			console.log(degree);
		},
		disable: function(){
				var t = this;
				return t.close().off('.rebox').trigger('rebox:disable',[t]);
			},
		destroy: function(){
				var t = this;
				return t.disable().removeData('rebox').trigger('rebox:destroy');
			},
		option: function(key, val){
				var t = this;
				if(val !== undefined){
					t.settings[key] = val;
					return t.disable().enable();
				}
				return t.settings[key];
			},
		change: function(e,f) {
			count++;
			var p_h = 0,
				p_w = 0;
			var imgSrc = $(e.target).attr('src');
			var url_img=imgSrc.substring(0, imgSrc.indexOf('@'));
			$bowl='<div class="' + 'rebox-glass"' + '><div class="' + 'rebox' + '-bowl">' + '<img  src="' + url_img + '" class="img-change" />' + '</div><div></div>';
			if(f){
				$('.rebox').append($bowl);
				$('.img-change').load(function(){
					p_h=$('.rebox-glass img').height();
					p_w=$('.rebox-glass img').width();
					if((p_h < s_h)&&(p_w < s_w)){
						$('.img-change').addClass('rebox-img');
						$('.rebox-img').css("transform"," rotate(" +degree+ "deg)");
					}else if((p_w > s_w)&& (p_w > p_h)){
						$('.img-change').addClass('img-bowlw');
						//$('.img-bowlw').css("transform-origin","0 0");
						$('.img-bowlw').css("transform"," rotate(" +degree+ "deg)");
						if( (degree==90) || (degree==270) ){
							$('.img-bowlw').css("margin-left","-95%").css("margin-top","98%");
						}else{
							console.log('laile')
							$('.img-bowlw').css("margin-left","0").css("margin-top","0");
						}
					}else if((p_h > s_h)&&(p_w < p_h)){
						$('.img-change').addClass('img-bowlh');
						$('.img-bowlh').css("transform","translate(-50%,-50%) rotate(" +degree+ "deg)");
						//if( (degree==90) || (degree=270) ){
						//	$('.img-bowlw').css("margin-left","-95%").css("margin-top","98%");
						//}
					}
				})
				$(".img-change").css("cursor","url('/images/small.cur'),default");
				console.log('读书'+degree)
			}else{
				$('.img-change').removeClass('rebox-img');
				$('.rebox-glass').remove();
				$('.img-bowlw').css("margin-left","0").css("margin-top","0");
				$(".img-change").css("cursor","url('/images/big.cur'),default");
			}
			f=!f;
			cursor_flag=f;
		}
	});

	$.fn.rebox = function(o) {
		o = o || {};
		var tmp_args = Array.prototype.slice.call(arguments);

		if (typeof(o) == 'string'){ 
			if(o == 'option' && typeof(tmp_args[1]) == 'string' && tmp_args.length === 2){
				var inst = $.rebox.lookup[$(this).data('rebox')];
				return inst[o].apply(inst, tmp_args.slice(1));
			}
			else return this.each(function() {
				var inst = $.rebox.lookup[$(this).data('rebox')];
				inst[o].apply(inst, tmp_args.slice(1));
			});
		} else return this.each(function() {
				var $t = $(this);
				$.rebox.lookup[++$.rebox.lookup.i] = new $.rebox($t, o);
				$t.data('rebox', $.rebox.lookup.i);
			});
	};

	
})(window.jQuery || window.Zepto || window.$);