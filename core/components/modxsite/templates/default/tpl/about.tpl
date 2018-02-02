{extends file="basepage.tpl"}

{block name=page}
    <div class="content-wrapper">
        {field name=content}
    </div>

    {if $tvData = {tv name=featured}|json_decode:true}
        <div id="featured" class="section">
            <div class="row">
                {foreach $tvData as $data}
                    <div class="col s24 m6 l6">
                        {include file="views/featured/item.tpl" data=$data}
                    </div>
                {/foreach}
            </div>
        </div>
    {/if}

{/block}