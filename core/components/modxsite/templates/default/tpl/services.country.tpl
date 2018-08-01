{extends file="basepage.tpl"}

{block name=page}
    <div id="page-services-country">
        <div class="row">
            <div class="col s12 l18">
                <div class="content-wrapper">
                    {field name=content}
                </div>
            </div>
            <div class="col s12 l6">
                <div class="navigation">
                    
                </div>
            </div>
        </div>
    </div>
    {include file="views/featured/index.tpl"}

    {include file="views/request2.tpl"}
{/block}