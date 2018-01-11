<html>
<head>

    {snippet name="MetaX@Meta"}
    <title>{field name=longtitle}</title>
    <link type="text/css" rel="stylesheet" href="{$template_url}css/style.min.css?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'css/style.min.css')}"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>

    <div id="main">

        {include file="views/navbar.tpl"}

        {block name=body}

            {$smarty.block.child}

        {/block}

    </div>

    <script src="{$template_url}js/scripts.min.js?{filemtime(MODX_BASE_PATH|cat:$template_url|cat:'js/scripts.min.js')}"></script>
</body>
</html>