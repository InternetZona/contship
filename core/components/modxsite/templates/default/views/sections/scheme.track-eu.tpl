<section id="scheme-track-eu" class="section">
    <div class="container">
        <div class="h4 text-bold center-align __title">[[%contship.scheme_track_eu? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div class="row">
            <div class="col s12">
                <ul class="scheme">

                    {if $tvData}
                        {foreach $tvData as $data}
                            <li>
                                <div class="schena-track-eu__item">
                                    <div class="icons"> <i class="{$data.icon}"></i></div>
                                    <p>{$data.title}</p>
                                </div>
                            </li>
                        {/foreach}
                    {/if}
                </ul>
            </div>
        </div>
    </div>
</section>