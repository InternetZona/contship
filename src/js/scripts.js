'use strict';
//= ../../node_modules/materialize-css/dist/js/materialize.min.js
//= ../../node_modules/animated-scroll-to/animated-scroll-to.js

//= _navbar.js
//= _modal.js
//= _carousel.js
//= _parallax.js
//= _tabs.js
//= _tooltip.js
//= _lang.js
//= _map.js

var App = {
    init: function () {
        _navbar();
        _modal();
        _carousel();
        _parallax();
        _tabs();
        _tooltip();
        _langbar();
        _map();

        document.querySelector('body').classList.add('loaded');
    }
};

App.init();



