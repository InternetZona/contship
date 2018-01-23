function _tooltip() {
    var elems = document.querySelectorAll('.tooltipped');
    [].forEach.call(elems, function(elem){
        M.Tooltip.init(elem);

    });
}