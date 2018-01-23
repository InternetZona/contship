function _langbar(){
    var elem = document.getElementById('lang-desktop');

    if (elem != null) {
        M.FloatingActionButton.init(elem, {
            direction: 'bottom',
            hoverEnabled: false
        });

        window.addEventListener('scroll', function(e){
            M.FloatingActionButton.getInstance(document.getElementById('lang-desktop'))
                .close();
        });
    }
}