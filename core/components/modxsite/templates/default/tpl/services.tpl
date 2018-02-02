{extends file="basepage.tpl"}

{block name=page}

    <div id="page-services">

        {assign var=params value=[
        'parent'    => {field name=id}
        , 'limit'   => 0
        ]}

        {processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=result}

        {if $result.success}
            <div class="row grid">
                {foreach $result.object as $object}
                    <div class="col s24 l8 cell">
                        <div class="service__item">
                            <div class="icons"> <i class="{$object.link_attributes}"></i></div>
                            <a href="{$object.uri}">
                                <div class="title">{$object.pagetitle}</div>
                            </a>
                            {include file="views/menus/childs.tpl" parent=$object.id}
                        </div>
                    </div>
                {/foreach}
            </div>
        {/if}

        <div class="content-wrapper">
            {field name=content}
        </div>

    </div>
{/block}