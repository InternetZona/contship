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
    {if {field name=id} == {config name=site_start}}

        {assign var=menu value=[
        'services'   => '[[%contship.menu_services? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ,'countries'   => '[[%contship.menu_countries? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ,'goods'    => '[[%contship.menu_goods? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ,'aboutus'    => '[[%contship.menu_aboutus? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ,'scheme-work'   => '[[%contship.menu_workschema? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ,'testimonials' => '[[%contship.menu_testimonials? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ,'blog' => '[[%contship.menu_blog? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ,'contactus' => '[[%contship.menu_contactus? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]'
        ]}

        {foreach $menu as $key => $item}
            <li><a href="#{$key}" class="scrollable">{$item}</a></li>
        {/foreach}

    {else}

        {$params= [
        'startId' => '0'
        ,'excludeDocs'=> {config name=site_start}
        ,'rowTpl'   => 'wf.row.main.tpl'
        ]}

        {snippet name="Wayfinder@Menu" params=$params}

    {/if}
</ul>