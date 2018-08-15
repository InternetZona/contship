{extends file="basepage.tpl"}

{block name=body append}
            {include file="views/countries/index.tpl"}
    {block name=page}
        <div class="container">
        {include file="views/featured/index.tpl"}
        {include file="views/request2.tpl"}
        </div>
    {/block}
{/block}