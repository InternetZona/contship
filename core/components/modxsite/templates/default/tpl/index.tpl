<html>
<head>
    {snippet name="MetaX@MetaX"}

    <title>{field name=longtitle}</title>
    <link type="text/css" rel="stylesheet" href="{$template_url}css/style.min.css?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'css/style.min.css')}"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="{$template_url}css/izstyle.css?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'css/izstyle.css')}"  media="screen,projection"/>
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

    {include file="views/lang/desktop.tpl"}
    {include file="views/sections/modals/feedback.tpl"}

    <script async src="{$template_url}js/scripts.min.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/scripts.min.js')}"></script>
    <script async src="{$template_url}js/izscripts.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/izscripts.js')}"></script>
</body>
</html>