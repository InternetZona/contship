function _carousel(){
    var elems = document.querySelectorAll('.carousel');

    if (elems != null) {
        [].forEach.call(elems, function(elem){

            var props = {
                indicators: true
            };

            switch(elem.id) {
                case 'clients-carousel':
                    props.dist = 0;
                    props.shift = 0;
                    props.padding = 20;
                    break;

                case 'testimonials-carousel':
                    props.fullWidth = true;
                    props.onCycleTo = function(item){
                        this.el.style.height = item.offsetHeight + 'px';
                    };
                    break;

                default:
            }

            var instance = M.Carousel.init(elem, props),
                _timer = runScroll(instance);

            elem.onmouseover = function(e) {
                clearInterval(_timer);
            };

            elem.onmouseout = function(e) {
                clearInterval(_timer);
                _timer = runScroll(instance);
            };

            if (elem.id == 'testimonials-carousel') {

                elem.style.height = calcHeight(elem);

                window.onresize = function(e) {
                    elem.style.height = calcHeight(elem);
                };
            }
        });
    }

    function calcHeight(elem){
        var newHeight = elem.querySelector('.active').offsetHeight + 'px';
        console.log(newHeight);
        return newHeight
    }

    function runScroll(instance) {
        return setInterval(function(){
            instance.next();
        }, instance.el.dataset.speed);
    }
}
