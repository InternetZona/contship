function _parallax(){
    var elems = document.querySelectorAll('.parallax');

    [].forEach.call(elems, function(elem) {
        M.Parallax.init(elem, {
            responsiveThreshold: 601
        });
    })

}