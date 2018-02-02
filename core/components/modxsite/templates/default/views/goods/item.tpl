<div class="col s24 m12 l6 cell">
    <a class="__item" href="{$modx->makeUrl($data.target)|default:"#"}">
        {if $data.icon}
            <i>{include file="svg/{$data.icon}.tpl"}</i>
        {/if}
        <span>{$data.title}</span>
    </a>
</div>