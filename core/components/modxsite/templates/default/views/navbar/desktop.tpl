<ul id="nav-desktop" class="hide-on-med-and-down">

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