{extends file="basepage.tpl"}

{block name=page}
    <div id="page-service-part">
        <div class="row">
            <div class="col l18 leftcontent">
                <div class="content-wrapper">
                    {field name=content}
                </div>

            </div>
            <div class="col l6 rightcontent">
                <div class="navigation">
                    {if $tv = {tv name=serviceCountriesMenu}}
                        {include file="views/menus/aside.tpl" data=explode('||', $tv) title="[[%contship.menu_countries_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]"}
                        {include file="views/menus/template.tpl" exclude="-{field name="id"}" parents="{field name="parent"}" title="Другие услуги" template="8"}
                    {/if}
                </div>
            </div>
        </div>
    </div>
    {if $schemaTv = {tv name=schema}|json_decode:true}
        {include file="views/schema.tpl" tvData=$schemaTv|array_slice:-7}
    {/if}

    {include file="views/featured/index.tpl"}

    {include file="views/request2.tpl"}
{/block}