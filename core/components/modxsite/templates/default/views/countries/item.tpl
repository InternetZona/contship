<div class="col s3 cell">
    <div class="__item">
        <a href="{$modx->makeUrl($data.target)|default:"#"}">
            {if $data.icon}
                <i>{include file="svg/{$data.icon}.tpl"}</i>
            {/if}
            <span>{$data.title}</span>
        </a>
    </div>
</div>