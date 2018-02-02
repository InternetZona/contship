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
    {include file="views/goods/index.tpl"}
    {include file="views/track_sea.tpl"  tvData={tv name=schemeTrackSEA}|json_decode:true|array_slice:-9}
    {include file="views/request.tpl" tvData={tv name=featuredTrackSEA}|json_decode:true}
    {include file="views/track_eu.tpl" tvData={tv name=schemeTrackEU}|json_decode:true|array_slice:-7}
    {include file="views/request.tpl" tvData={tv name=featuredTrackEU}|json_decode:true}
    {include file="views/sections/about.tpl" object=$pages.object[3]|default:[]}
    {include file="views/callback.tpl"}
    {include file="views/sections/testimonials.tpl" object=$pages.object[4]|default:[]}
    {include file="views/sections/blog.tpl"}
    {include file="views/sections/clients.tpl" object=$pages.object[6]|default:[]}
    {include file="views/sections/contacts.tpl"}

{/block}