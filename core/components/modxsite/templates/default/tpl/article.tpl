{extends file="basepage.tpl"}

{block name=page}
    <article class="content-wrapper">
        {field name=content}
    </article>
    
    {include file="views/featured/index.tpl"}
    {include file="views/request2.tpl"}
    {include file="views/sections/internal_testimonials.tpl"}
{/block}