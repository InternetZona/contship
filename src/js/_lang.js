function _langbar(){

    var elems = document.querySelectorAll('.fixed-action-btn');

    [].forEach.call(elems, function(elem){
        M.FloatingActionButton.init(elem, {
            direction: 'bottom',
            hoverEnabled: false
        });

       if (elem.id == 'lang-desktop') {

           window.addEventListener('scroll', function (e) {
               M.FloatingActionButton.getInstance(document.getElementById(elem.id))
                   .close();
           });
       }
    });
}