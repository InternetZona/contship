<section id="countries" class="section">
    <div class="container">
        <div class="h5 text-bold center-align">[[%contship.countries]]</div>
        <div class="row">
            <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s6 offset-l3 l3"><a class="active" href="#asia-group">[[%contship.countries_asia]]</a></li>
                    <li class="tab col s6 l3"><a href="#eu-group">[[%contship.countries_eu]]</a></li>
                </ul>
            </div>
            <div id="asia-group" class="col s12">

                <div class="row grid">
                    {foreach {tv name=asiaDelivery}|json_decode:true as $data}
                        {include file="views/countries/item.tpl" data=$data}
                    {/foreach}
                </div>

            </div>
            <div id="eu-group" class="col s12">

                <div class="row grid">
                    {foreach {tv name=euDelivery}|json_decode:true as $data}
                        {include file="views/countries/item.tpl" data=$data}
                    {/foreach}
                </div>

            </div>
        </div>
    </div>
</section>