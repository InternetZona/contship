function _map() {
    var container = document.getElementById('map');

    if (container != null) {
        var script = document.createElement('script');

        script.src = "https://api-maps.yandex.ru/2.1/?lang=ru_RU";
        script.async = true;
        script.onload = function() {
            ymaps.ready(function(){
                var map = new ymaps.Map("map", {
                    center: [55.849974, 37.670016],
                    zoom: 15
                }),
                    placemark = new ymaps.Placemark(map.getCenter(), {
                        hintContent: 'Contship Express',
                    }, {
                        iconLayout: 'default#image',
                        iconImageHref: 'assets/components/modxsite/templates/default/images/marker.png',
                        iconImageSize: [48, 54],
                        iconImageOffset: [-5, -38]
                    });

                map.behaviors.disable('scrollZoom');

                map.geoObjects
                    .add(placemark);
            });
        }

        document.body.appendChild(script);
    }
}