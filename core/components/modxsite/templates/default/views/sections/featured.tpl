<section id="featured" class="section">
    <div class="container">
        <div class="h5 text-bold center-align __title">[[%contship.featured_title]]</div>
        <div class="row">

            {if $tvData}
                {foreach $tvData as $data}
                    <div class="col s3">
                        {include file="views/sections/featured.item.tpl" data=$data}
                    </div>
                {/foreach}
            {/if}
        </div>
    </div>
</section>