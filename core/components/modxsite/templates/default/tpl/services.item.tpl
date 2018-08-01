{extends file="basepage.tpl"}

{block name=page}
    <div id="page-services-item">
        <div class="row">
            <div class="col l18">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col l6">
                    {if $tv = {tv name=serviceCountriesMenu}}
                        {include file="views/menus/aside.tpl" data=explode('||', $tv) title="[[%contship.menu_countries_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]"}
                    {/if}
            </div>
        </div>
    </div>
{/block}