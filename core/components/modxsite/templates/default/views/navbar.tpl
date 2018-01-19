<nav class="z-depth-2">
    <div class="nav-wrapper container">
        <a href="#" class="brand-logo hide-on-large-only">Logo</a>
        <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
        <ul id="nav-desktop" class="hide-on-med-and-down">

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
        <ul class="sidenav" id="nav-mobile">
            <li><a href="sass.html">Sass</a></li>
            <li><a href="badges.html">Components</a></li>
            <li><a href="collapsible.html">Javascript</a></li>
            <li><a href="mobile.html">Mobile</a></li>
        </ul>
    </div>
</nav>