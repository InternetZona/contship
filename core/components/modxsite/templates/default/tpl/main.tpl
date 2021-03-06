{extends file="tpl/index.tpl"}

{block name=body}

    {include file="views/info.tpl"}

    {assign var=params value=[
        'where' => [
            'id:IN' => [2,3,4,5,6,7]
        ]
    ]}

    {processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=pages}

    {include file="views/sections/services.tpl"}
    {include file="views/countries/index.tpl"}
    {snippet name="AjaxSnippet" params=[
    'snippet'   => 'load'
    ,'tpl'     => 'goods.tpl'
    ,'parents' => '0'
    , 'as_mode'  => 'onscroll'
    , 'loadtext'  => ''
    ]}
    {include file="views/track_sea.tpl"  tvData={tv name=schemeTrackSEA}|json_decode:true|array_slice:-9}
    {include file="views/request.tpl" tvData={tv name=featuredTrackSEA}|json_decode:true subject="Запрос на доставку ЮВА."}
    {include file="views/track_eu.tpl" tvData={tv name=schemeTrackEU}|json_decode:true|array_slice:-7}
    {include file="views/request.tpl" tvData={tv name=featuredTrackEU}|json_decode:true subject="Запрос на доставку Европа."}
    {include file="views/sections/about.tpl" object=$pages.object[3]|default:[]}
    {include file="views/callback.tpl"}
    <noindex>
        {include file="views/sections/testimonials.tpl" object=$pages.object[4]|default:[]}
    </noindex>
    {snippet name="AjaxSnippet" params=[
    'snippet'   => 'load'
    ,'tpl'     => 'blog.tpl'
    ,'parents' => '0'
    , 'as_mode'  => 'onscroll'
    , 'loadtext'  => ''
    ]}
    <!--
    {include file="views/sections/clients.tpl" object=$pages.object[6]|default:[]}
    -->
    {include file="views/sections/contacts.tpl"}
{/block}