function _modal() {
    var elems = document.querySelectorAll('.modal');

    [].forEach.call(elems, function(elem){
        var instance = M.Modal.init(elem);

    });
}