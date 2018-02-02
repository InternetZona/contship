<header>
    <div class="container">
        <div class="row">
            <div class="col hide-on-med-and-down l6 xl5">
                {if {field name=id} == {config name=site_start} }
                    <span class="brand-logo">
                        <img src="{$template_url}images/logo.png" class="responsive-img">
                    </span>
                {else}
                    <a href="#" class="brand-logo">
                        <img src="{$template_url}images/logo.png" class="responsive-img">
                    </a>
                {/if}
            </div>
            <div class="col s12 offset-m4 m8 offset-l2 l8 offset-xl5 xl7">
                <div class="info-box">
                    <i class="material-icons hide-on-med-and-down">phone_iphone</i>
                    <div class="info-box__item">
                        <span>[[%contship.callnow? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
                        <a href="tel:+74956442341">
                            <span>+7 (495) 644-23-41</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col s12 m8 l8 xl7">
                <div class="info-box">
                    <i class="material-icons hide-on-med-and-down">mail_outline</i>
                    <div class="info-box__item">
                        <span>[[%contship.feedback? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
                        <a href="mailto:info@contship.ru">
                            <span>info@contship.ru</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>