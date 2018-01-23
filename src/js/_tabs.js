function _tabs(){
    var elems = document.querySelectorAll('.tabs');
    if (elems != null) {
        [].forEach.call(elems, function(elem){
            M.Tabs.init(elem);
        })
    }
}
