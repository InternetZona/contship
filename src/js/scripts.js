'use strict';
//= ../../node_modules/materialize-css/dist/js/materialize.min.js
//= ../../node_modules/animated-scroll-to/animated-scroll-to.js
//= ../../node_modules/jquery/dist/jquery.js
//= ../../node_modules/jquery-validation/dist/jquery.validate.js
//= ../../node_modules/jquery-validation/dist/additional-methods.js
//= ../../node_modules/jquery.maskedinput/src/jquery.maskedinput.js

//= _navbar.js
//= _modal.js
//= _carousel.js
//= _parallax.js
//= _tabs.js
//= _tooltip.js
//= _lang.js
//= _map.js
//= _form.js

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
        _form();

        $('input[type="tel"]').mask("+7 (999) 999-99-99");

        $('#scroller-top').on('click', function(e) {
            e.preventDefault();
            $('html, body').animate({scrollTop: 0}, 800);
        });

        $(window).on('scroll', function(e) {
          if($(window).scrollTop() > 100 && $(window).width() > 600) {
            $('#scroller-top:hidden').show();
          } else {
            $('#scroller-top:visible').hide();
          }
        });

        document.querySelector('body').classList.add('loaded');
    }
};

App.init();



