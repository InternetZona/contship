<div class="col s24 m8 l6 cell">
    <div class="__item valign-wrapper">
        {$url = ($data.target) ? $modx->makeUrl($data.target) : '#'}
        <a href="{$url}">
            {if $data.icon}
                <i>{include file="svg/{$data.icon}.tpl"}</i>
            {/if}
            <span>{$data.title}</span>
        </a>
    </div>
</div>