{extends file="basepage.tpl"}

{block name=page}
    <div id="page-services-item">
        <div class="row">
            <div class="col l18 leftcontent">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col l6 rightcontent">
                {include file="views/menus/template.tpl" exclude="-{field name="id"}" parents="{field name="parent"}" title="Услуги" template="11"}
                {include file="views/menus/template.tpl" exclude="-{field name="id"}" parents="{field name="parent"}" title="Товары" template="12"}

                {if $tv = {snippet name="getTvParent" params=['id'   => {field name="id"}, 'tv'   => "serviceCountriesMenu"]}}
                    {include file="views/menus/aside.tpl" data=explode('||', $tv) title="География перевозок"}
                {/if}
            </div>
        </div>
    </div>
{/block}