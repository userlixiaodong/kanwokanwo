/**
 * song
 */
var ModalEffects = (function() {
    function init() {
        $('body').on('click','.md-trigger',function(e){
            $(this).closest('.md-effect-1').removeClass('md-show');
            e.stopPropagation();
            $('#'+($(this).attr('data-modal'))).addClass('md-show');
            $('.md-overlay').addClass('md-overlay-show');
        });
        $('body').on('click','.md-close',function(e){
            $(this).closest('.md-effect-1').removeClass('md-show');
            $('.md-overlay').removeClass('md-overlay-show');
            e.stopPropagation();
        });
        $('body').on('click','.md-overlay',function(){
            $(".md-close").trigger("click");
        });
        $('body').on('click','.reveal-button',function(){
            $(this).closest('.md-effect-1').removeClass('md-show');
            $('.md-overlay').removeClass('md-overlay-show');
        });
    }
    init();
})();