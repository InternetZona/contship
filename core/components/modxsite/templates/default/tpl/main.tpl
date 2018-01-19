{extends file="tpl/index.tpl"}

{block name=body}

    {include file="views/sections/info.tpl"}

    {assign var=params value=[
        'where' => [
            'id:!=' => 1
        ]
        , 'parent'  => 0
    ]}

    {processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

    {include file="views/sections/services.tpl"}
    {include file="views/sections/scheme.track-eu.tpl" tvData={tv name=schemeTrackEU}|json_decode:true|array_slice:-7}
    {include file="views/sections/form.track-eu.tpl"}
    {include file="views/sections/scheme.track-cn-multi.tpl"}
    {include file="views/sections/form.track-cn.tpl"}
    {include file="views/sections/aboutus.tpl" object=$result.object[3]|default:[]}
    {include file="views/sections/callback.tpl"}
    {include file="views/sections/testimonials.tpl"}
    {include file="views/sections/blog.tpl"}
    {include file="views/sections/partners.tpl"}
    {include file="views/sections/contacts.tpl"}

{/block}