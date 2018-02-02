{extends file="basepage.tpl"}

{block name=page}
    <div id="page-service-part">
        <div class="row">
            <div class="col l18">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col l6">
                <div class="navigation">
                    {include file="views/menus/services.tpl" title="[[%contship.menu_countries_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]"}
                </div>
            </div>
        </div>
    </div>
{/block}