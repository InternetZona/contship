{extends file="basepage.tpl"}

{block name=page}
    <div id="page-services-country">
        <div class="row">
            <div class="col s12 l18 leftcontent">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col s12 l6 rightcontent">
                <div class="navigation">
                    {if $tv = {tv name=serviceCountriesMenu}}
                        {include file="views/menus/template.tpl" parents="{field name="id"}" title="Услуги" template="11"}
                        {include file="views/menus/template.tpl" parents="{field name="id"}" title="Товары" template="12"}
                        {include file="views/menus/aside.tpl" data=explode('||', $tv) title="География перевозок"}
                    {/if}
                </div>
            </div>
        </div>
    </div>
    {include file="views/featured/index.tpl"}

    {include file="views/request2.tpl"}
{/block}