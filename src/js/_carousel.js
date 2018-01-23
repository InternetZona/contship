function _carousel(){
    var elem = document.querySelector('.carousel'),
        instance = null;

    if (elem != null) {
        instance = M.Carousel.init(elem,{
            dist:0,
            shift:0,
            padding:20,
            indicators: true
        });

        var _scrollTimer = runScroll();

        elem.addEventListener('mouseover', function(){
            clearInterval(_scrollTimer);
        });
        elem.addEventListener('mouseout', function() {
            clearInterval(_scrollTimer);
            _scrollTimer = runScroll();
        });
    }
    function runScroll() {
        return setInterval(function(){
            instance.next();
        }, 4000);
    }
}
