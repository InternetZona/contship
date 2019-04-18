<html>
<head>
    {snippet name="MetaX@MetaX"}

    <title>{field name=longtitle}</title>

    [[MinifyX?
    &minifyCss=`1`
    &minifyJs=`1`
    &registerCss=`default`
    &registerJs=`default`
    &cssSources=`
    {$template_url}css/style.min.css,
    {$template_url}css/izstyle.css
    `
    &jsSources=`
    {$template_url}js/scripts.min.js,
    {$template_url}js/izscripts.js,
    `
    ]]

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    {literal}
        <!-- Facebook Pixel Code -->
        <script>
            !function(f,b,e,v,n,t,s)
            {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
                n.callMethod.apply(n,arguments):n.queue.push(arguments)};
                if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
                n.queue=[];t=b.createElement(e);t.async=!0;
                t.src=v;s=b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t,s)}(window,document,'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '322420731278246');
            fbq('track', 'PageView');
        </script>
        <noscript>
            <img height="1" width="1"
                 src="https://www.facebook.com/tr?id=322420731278246&ev=PageView
&noscript=1"/>
        </noscript>
        <!-- End Facebook Pixel Code -->
        <script type="text/javascript">!function(){var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src="https://vk.com/js/api/openapi.js?160",t.onload=function(){VK.Retargeting.Init("VK-RTRG-315768-c2DRl"),VK.Retargeting.Hit()},document.head.appendChild(t)}();</script><noscript><img src="https://vk.com/rtrg?p=VK-RTRG-315768-c2DRl" style="position:fixed; left:-999px;" alt=""/></noscript>
    {/literal}
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

        {if {field name=id} != 1}
            {include file="views/sections/contacts.tpl"}
        {/if}

        {snippet name="AjaxSnippet" params=[
        'snippet'   => 'load'
        ,'tpl'     => 'footer.tpl'
        ,'parents' => '0'
        , 'as_mode'  => 'onscroll'
        , 'loadtext'  => ''
        ]}

    </div>

    {include file="views/lang/desktop.tpl"}
    {include file="views/sections/modals/feedback.tpl"}
    {include file="views/sections/modals/callback.tpl"}
    {include file="views/sections/modals/zayavka.tpl"}
    <div class="scrollup">
        <i class="material-icons">arrow_drop_up</i>
    </div>
    <script src="{$template_url}js/jquery-3.3.1.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/jquery-3.3.1.js')}"></script>
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
                        webvisor:true
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
    {snippet name="AjaxSnippet" params=[
    'snippet'   => 'load'
    ,'tpl'     => 'jivosite.tpl'
    ,'parents' => '0'
    , 'as_mode'  => 'onscroll'
    , 'loadtext'  => ''
    ]}
    {literal}
        <script data-skip-moving="true">
            (function(w,d,u){
                var s=d.createElement('script');s.async=1;s.src=u+'?'+(Date.now()/60000|0);
                var h=d.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);
            })(window,document,'https://bitrix.contship.ru/upload/crm/site_button/loader_1_h05fi1.js');
        </script>
    {/literal}
</body>
</html>