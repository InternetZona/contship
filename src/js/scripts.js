'use strict';
//= ../../node_modules/materialize-css/dist/js/materialize.min.js
//= ../../node_modules/animated-scroll-to/animated-scroll-to.js

//= _navbar.js
//= _modal.js
//= _carousel.js
//= _parallax.js

var App = {
    init: function () {
        _navbar();
        _modal();
        _carousel();
        _parallax();
    }
};

App.init();



