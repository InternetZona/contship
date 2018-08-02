<section id="clients" class="grey lighten-4 section">
    <div class="container">
        <div class="h4 text-bold center-align __title">[[%contship.clients_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div id="clients-carousel" class="carousel carousel-fixed-item" data-speed="4000">

            {$list = $object.tvs.clients.value|json_decode:true|array_slice:-10}

            {foreach $list as $data}
                {assign var=thumb value=[
                    "input" => $data.logo,
                    "options" => "&w=170&h=110&zc=0&aoe=0&far=0"
                ]}

                <a class="carousel-item valign-wrapper" href="#item-{$data.MIGX_id}"><img class="responsive-img" src="{snippet name="phpthumbon" params=$thumb}" alt="{$data.name}"></a>
            {/foreach}
        </div>
        {include file="views/buttons/view_all.tpl" link=$object.uri}
    </div>
</section>