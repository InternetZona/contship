<ul class="sidenav" id="nav-mobile">
    <li class="header">
        {include file="views/lang/mobile.tpl"}
        {if {field name=id} == {config name=site_start} }
            <span class="brand-logo">
                        <img src="{$template_url}images/logo.png" class="responsive-img">
                    </span>
        {else}
            <a href="#" class="brand-logo">
                <img src="{$template_url}images/logo.png" class="responsive-img">
            </a>
        {/if}
    </li>
    {$params= [
        'startId' => '0'
        , 'excludeDocs'=> {config name=site_start}
    ]}

    {$i = {field name=id} == {config name=site_start}}

    {if {field name=id} == {config name=site_start}}

        {append var=params value='wf.scrollableRow.tpl' index="rowTpl"}
    {else}
        {append var=params value='wf.row.main.tpl' index="rowTpl"}
    {/if}

    {snippet name="Wayfinder@Menu" params=$params}
</ul>