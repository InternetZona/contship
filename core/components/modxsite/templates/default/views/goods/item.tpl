<div class="col s12 m6 l3 cell">
    <a class="__item" href="{$modx->makeUrl($data.target)|default:"#"}">
        {if $data.icon}
            <i>{include file="svg/{$data.icon}.tpl"}</i>
        {/if}
        <span>{$data.title}</span>
    </a>
</div>