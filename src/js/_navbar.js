function _navbar() {
    var elem = document.querySelector('.sidenav');

    if (elem != null) {
        M.Sidenav.init(elem);
    }

    var scrollableLinks = document.getElementsByClassName('scrollable');
    [].forEach.call(scrollableLinks, function(link) {

        link.addEventListener('click', function(e){
            e.preventDefault();

            if (this.closest('.sidenav') !== null) {
              var instance = M.Sidenav.getInstance(document.querySelector('.sidenav'));
              instance.close();
            }

            var block = document.querySelector(link.hash);
            animateScrollTo(block.offsetTop - 30);
        });
    });
}
