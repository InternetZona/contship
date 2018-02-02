<section id="featured">
    <div class="container">
        <div class="h5 text-bold center-align __title">[[%contship.featured_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div class="row">

            {if $tvData}
                {foreach $tvData as $data}
                    <div class="col s12 l6">
                        {include file="views/featured/item.tpl" data=$data}
                    </div>
                {/foreach}
            {/if}
        </div>
    </div>
</section>