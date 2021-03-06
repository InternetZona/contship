{extends file="basepage.tpl"}

{block name=page}
    <div id="page-services-country">
        <div class="row">
            <div class="col s24 l18 leftcontent">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col s24 l6 rightcontent">
                <div class="navigation">
                    {if {field name=isfolder} == 1}
                        <!--noindex-->
                        {include file="views/menus/template.tpl" parents="{field name="id"}" title="Услуги" template="11"}
                        <!--/noindex-->
                        <!--noindex-->
                        {include file="views/menus/template.tpl" parents="{field name="id"}" title="Товары" template="12"}
                        <!--/noindex-->
                    {/if}
                    {if $tv = {tv name=serviceCountriesMenu}}
                        {include file="views/menus/aside.tpl" data=explode('||', $tv) title="География перевозок"}
                    {/if}
                    <!--noindex-->
                    {include file="views/banners/presentation.tpl"}
                    <!--/noindex-->
                </div>
            </div>
        </div>
    </div>
    {include file="views/countries/index.tpl"}
    {include file="views/featured/index.tpl"}

    {include file="views/request2.tpl"}
    {include file="views/sections/internal_testimonials.tpl"}
{/block}