{extends file="basepage.tpl"}

{block name=page}
    <div id="page-services-item">
        <div class="row">
            <div class="col s24 l18 leftcontent">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col s24 l6 rightcontent">
                <!--noindex-->
                {include file="views/menus/template.tpl" exclude="-{field name="id"}" parents="{field name="parent"}" title="Услуги" template="11"}
                <!--/noindex-->
                <!--noindex-->
                {include file="views/menus/template.tpl" exclude="-{field name="id"}" parents="{field name="parent"}" title="Товары" template="12"}
                <!--/noindex-->
                {if $tv = {snippet name="getTvParent" params=['id'   => {field name="id"}, 'tv'   => "serviceCountriesMenu"]}}
                    {include file="views/menus/aside.tpl" data=explode('||', $tv) title="География перевозок"}
                {/if}
            </div>
        </div>
    </div>
    {include file="views/featured/index.tpl"}

    {include file="views/request2.tpl"}
{/block}