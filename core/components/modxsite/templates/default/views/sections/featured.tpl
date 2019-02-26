<section id="featured">
    <div class="container">
        <div class="h3 text-bold center-align __title">[[%contship.featured_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div class="row">

            {if $tvData}
                {foreach $tvData as $data}
                    <div class="col s12 l6">
                        <div class="fea-panel">
                        {include file="views/featured/item.tpl" data=$data}
                        </div>
                    </div>
                {/foreach}
            {/if}
        </div>
    </div>
</section>