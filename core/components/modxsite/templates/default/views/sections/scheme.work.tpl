<section id="scheme-work" class="section">
    <div class="container">
        <div class="h5 text-bold center-align __title">[[%contship.scheme_work_title]]</div>
        <div class="row grid">
            {if $tvData}
                {$i = 0}
                {foreach $tvData as $data}
                    {$i = $i + 1}
                    <div class="col s3 cell">
                        <div class="work-schema__item">
                            <span class="item-num">{$i}</span>
                            <p>
                                {$data.title}
                            </p>
                        </div>
                    </div>
                {/foreach}
            {/if}

        </div>
    </div>
</section>