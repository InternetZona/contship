<section id="scheme-track-sea" class="section">
    <div class="container">
        <div class="__title">
            <div class="h5 text-bold center-align">[[%contship.track_sea_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
            <div class="h5 center-align">[[%contship.track_sea_desc? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        </div>
        <div class="row grid">
            <div class="col s24 valign-wrapper">
                <ul class="scheme">

                    {foreach $tvData|array_slice:0:3 as $data}
                        {include file="views/schemes/track_item.tpl" data=$data}
                    {/foreach}

                    <li>
                        <div class="row">
                            <div class="col s24">
                                <ul class="tabs">
                                    <li class="tab col s8">
                                        <a href="#track-1" class="active">
                                            <i class="flaticon-airplane-frontal-view"></i>
                                            <span class="hide-on-small-and-down">[[%contship.delivery_auto? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
                                        </a>
                                    </li>
                                    <li class="tab col s8">
                                        <a href="#track-2">
                                            <i class="flaticon-train-front"></i>
                                            <span class="hide-on-small-and-down">[[%contship.delivery_train? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
                                        </a>
                                    </li>
                                    <li class="tab col s8">
                                        <a href="#track-3">
                                            <i class="flaticon-packages-storage-for-delivery"></i>
                                            <span class="hide-on-small-and-down">[[%contship.delivery_post? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div id="track-1" class="col s24">
                                <ul class="scheme sub">
                                    {foreach $tvData|array_slice:3:2 as $data}
                                        {include file="views/schemes/track_item.tpl" data=$data}
                                    {/foreach}
                                </ul>
                            </div>
                            <div id="track-2" class="col s24">
                                <ul class="scheme sub">
                                    {include file="views/schemes/track_item.tpl" data=$tvData|array_slice:5:1|array_shift}
                                </ul>
                            </div>
                            <div id="track-3" class="col s24">
                                <ul class="scheme sub">
                                    {foreach $tvData|array_slice:6:2 as $data}
                                        {include file="views/schemes/track_item.tpl" data=$data}
                                    {/foreach}
                                </ul>
                            </div>
                        </div>
                    </li>

                    {include file="views/schemes/track_item.tpl" data=$tvData|array_slice:8|array_shift}

                </ul>
            </div>

        </div>
    </div>
</section>