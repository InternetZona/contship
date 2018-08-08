<section id="countries" class="section">
    <div class="container">
        <div class="h3 text-bold center-align">[[%contship.countries? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div class="row">
            <div class="col s24">
                <ul class="tabs">
                    <li class="tab col s12 offset-l5 l7"><a class="active" href="#asia-group">[[%contship.countries_asia? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</a></li>
                    <li class="tab col s12 l7"><a href="#eu-group">[[%contship.countries_eu? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</a></li>
                </ul>
            </div>

            {assign var=params value=[
            'where' => [
            'id'    => 1
            ]
            , 'current' => true
            ]}

            {processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=result}

            <div id="asia-group" class="col s24">

                <div class="row grid">
                    {foreach $result.object.tvs.asiaDelivery.value|json_decode:true as $data}
                        {include file="views/countries/item.tpl" data=$data}
                    {/foreach}
                </div>

            </div>
            <div id="eu-group" class="col s24">

                <div class="row grid">
                    {foreach $result.object.tvs.euDelivery.value|json_decode:true as $data}
                        {include file="views/countries/item.tpl" data=$data}
                    {/foreach}
                </div>

            </div>
        </div>
    </div>
</section>