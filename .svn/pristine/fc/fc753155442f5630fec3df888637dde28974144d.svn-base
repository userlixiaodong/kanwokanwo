$(function () {
    $('.button-tag .who-ami').addClass('tab-show');
    $('.button-tag .who-ami').removeClass('tab-hide');
    $('.button-tag2').hide();
    $('.button-tag').show();
})
$(function() {
    $('.button-tag li').click(function () {
        var item = $(this);

        $('.button-tag li').removeClass('tab-show');
        $('.button-tag li').addClass('tab-hide');

        item.addClass('tab-show');
        item.removeClass('tab-hide');
        var itemId = item.attr('data-id');
        if (itemId) {
            var t = $('#' + itemId).offset().top - 75;
            $(window).scrollTop(t);
        }
    });
})

//日期时间选择器插件
$.datetimepicker.setLocale('en');

$('#datetimepicker_format').datetimepicker({value:'', format: $("#datetimepicker_format_value").val()});
console.log($('#datetimepicker_format').datetimepicker('getValue'));

$("#datetimepicker_format_change").on("click", function(e){
    $("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
});
$("#datetimepicker_format_locale").on("change", function(e){
    $.datetimepicker.setLocale($(e.currentTarget).val());
});

$('#datetimepicker').datetimepicker({
    dayOfWeekStart : 1,
    lang:'en',
    disabledDates:['2016/09/15','2016/09/15','2016/09/15'],
    startDate:	'2016/09/15'
});
$('#datetimepicker').datetimepicker({value:'',step:10});

$('.some_class').datetimepicker();

$('#default_datetimepicker').datetimepicker({
    formatTime:'H:i',
    formatDate:'d.m.Y',
    //defaultDate:'8.12.1986', // it's my birthday
    defaultDate:'+03.01.1970', // it's my birthday
    defaultTime:'10:00',
    timepickerScrollbar:false
});
//以上，