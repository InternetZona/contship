<html>
<head>
    {snippet name="MetaX@MetaX"}

    <title>{field name=longtitle}</title>
    <link type="text/css" rel="stylesheet" href="{$template_url}css/style.min.css?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'css/style.min.css')}"  media="screen,projection"/>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>

    {include file="views/loader.tpl"}
    {include file="views/svg.tpl"}

    <div id="main">

        {include file="views/header.tpl"}
        {include file="views/navbar/index.tpl"}

        {block name=body}

            {$smarty.block.child}

        {/block}

        {include file="views/footer.tpl"}

    </div>

    <div class="fixed-action-btn">
        <a id="scroller-top" class="btn-floating btn-large">
            <i class="large material-icons">arrow_upward</i>
        </a>
    </div>

    {include file="views/lang/desktop.tpl"}
    {include file="views/sections/modals/feedback.tpl"}

    <script async src="{$template_url}js/scripts.min.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/scripts.min.js')}"></script>
{literal}
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter10207042 = new Ya.Metrika({
                    id:10207042,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true,
                    params:window.yaParams||{ }
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/10207042" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-1615795-41"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-1615795-41');
</script>
{/literal}
</body>
</html>