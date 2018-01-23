<section id="scheme-track-eu" class="section">
    <div class="container">
        <div class="h4 text-bold center-align">[[%contship.track_eu]]</div>
        <div class="row">
            <div class="col s12">
                <ul class="scheme">

                    {if $tvData}
                        {foreach $tvData as $data}
                            {include file="views/schemes/track_item.tpl" data=$data}
                        {/foreach}
                    {/if}
                </ul>
            </div>
        </div>
    </div>
</section>