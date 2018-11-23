<header>
    <div class="container">
        <div class="row">
            <div class="col hide-on-med-and-down l6 xl5">
                {if {field name=id} == {config name=site_start} }
                    <span class="brand-logo">
                        <img src="{$template_url}images/logo.png" class="responsive-img">
                    </span>
                {else}
                    <a href="{$modx->makeUrl({config name=site_start})}" class="brand-logo">
                        <img src="{$template_url}images/logo.png" class="responsive-img">
                    </a>
                {/if}
            </div>
            <div class="col s12 m8 l8 xl7">
                <div class="info-box phone">
                    <i class="material-icons hide-on-med-and-down">phone_iphone</i>
                    <div class="info-box__item">
                        <a href="tel:+74956442341">
                            <span>+7 (495) 644-23-41</span>
                        </a>
                        <div class="timework">[[%contship.timework? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
                    </div>
                </div>
            </div>
            <div class="col s12 m6 l5 xl5 phoneouter">
                <div class="info-box">
                    <a onclick="yaCounter10207042.reachGoal('call');" href="#modal-callback" class="callbackbut modal-trigger btn blue-effect">
                        [[%contship.callback? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]
                    </a>
                </div>
            </div>
            <div class="col s12 m8 l5 xl4">
                <div class="info-box">
                    <i class="material-icons hide-on-med-and-down">mail_outline</i>
                    <div class="info-box__item mail_outline">
                        <a onclick="yaCounter10207042.reachGoal('letter');" href="#modal-feedback" class="modal-trigger letter">
                            <span>[[%contship.feedback? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col s12 m6 l5 xl3 phoneouter">
                <div class="info-box">
                    <a onclick="yaCounter10207042.reachGoal('rashet_shapka');" href="#modal-zayavka" class="costdelivery modal-trigger btn red blue-effect">
                        Рассчитать стоимость доставки
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>