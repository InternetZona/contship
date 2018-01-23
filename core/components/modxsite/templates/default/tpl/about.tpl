{extends file="basepage.tpl"}

{block name=page}
    <div class="row">
        <div class="col s8">
            <div class="content-wrapper">
                {field name=content}
            </div>
        </div>
    </div>

    {if $tvData = {tv name=featured}|json_decode:true}
        <div id="featured" class="section">
            <div class="row">
                {foreach $tvData as $data}
                    <div class="col s12 m6 l3">
                        {include file="views/featured/item.tpl" data=$data}
                    </div>
                {/foreach}
            </div>
        </div>
    {/if}

{/block}