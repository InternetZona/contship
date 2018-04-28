<div class="col s24 m8 l6 cell">
    <div class="__item valign-wrapper">
        <a href="{$modx->makeUrl($data.target)|default:"#"}">
            {if $data.icon}
                <i>{include file="svg/{$data.icon}.tpl"}</i>
            {/if}
            <span>{$data.title}</span>
        </a>

        <!--<a  href="{$modx->makeUrl($data.target)|default:"#"}">
            <div class="icons"> <i class="{$object.link_attributes}"></i></div>
            <div class="title">{$object.pagetitle}</div>
        </a>-->
    </div>
</div>