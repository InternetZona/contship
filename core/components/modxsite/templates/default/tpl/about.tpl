{extends file="basepage.tpl"}

{block name=page}
    <div class="row">
        <div class="col s8">
            <div class="content-wrapper">
                {field name=content}
            </div>
        </div>
    </div>
    {include file="views/sections/featured/base.tpl"}
{/block}