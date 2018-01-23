<ul class="sidenav" id="nav-mobile">
    <li></li>
    {$params= [
        'startId' => '0'
        , 'excludeDocs'=> '1'
    ]}

    {$i = {field name=id} == {config name=site_start}}

    {if {field name=id} == {config name=site_start}}

        {append var=params value='wf.scrollableRow.tpl' index="rowTpl"}
    {else}
        {append var=params value='wf.row.main.tpl' index="rowTpl"}
    {/if}

    {snippet name="Wayfinder@Menu" params=$params}
</ul>