<section id="services" class="grey lighten-4 section">
    <div class="container">
        <div class="h4 text-bold center-align __title">
            {$catalog = $modx->getObject('modResource', 2)}
            {$catalog->pagetitle}
        </div>
        <div class="row grid">

            {assign var=params value=[
                'parent'    => $catalog->id
                , 'limit'     => 0
            ]}

            {processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=result}

            {foreach $result.object as $object}

                <div class="col s24 m12 l8 cell">
                    <a class="service__item" href="{$object.uri}">
                        <div class="icons"> <i class="{$object.link_attributes}"></i></div>
                        <div class="title">{$object.pagetitle}</div>
                        <p>{$object.introtext}</p>
                    </a>
                </div>

            {/foreach}
        </div>
        {include file="views/buttons/view_all.tpl" link=$catalog->uri}
    </div>
</section>