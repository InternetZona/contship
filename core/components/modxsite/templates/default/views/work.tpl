<section id="scheme-work" class="section">
    <div class="container">
        <div class="h5 text-bold center-align __title">[[%contship.scheme_work_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div class="row grid">
            {if $tvData}
                {$i = 0}
                {foreach $tvData as $data}
                    {$i = $i + 1}
                    <div class="col s24 m6 xl8 cell">
                        <div class="__item">
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