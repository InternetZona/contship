<section class="request-form-block">
    <div class="parallax-container">
        <div class="parallax"><img src="{$template_url}images/parallax.jpg"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col s4">
                {include file="views/forms/request.tpl"}
            </div>
            <div class="col offset-s2 s6 white-text">
                <div class="__wrapper">
                    <a class="btn-floating btn-large white waves-light waves-effect">
                        <i class="material-icons">arrow_downward</i>
                    </a>
                </div>
                <div class="h5 text-bold">[[%contship.featured? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
                <ul class="featured-list">
                    <li><i class="material-icons">adjust</i> Не тербуется экспертная лицензия у продавца, таможенное оформление производится в Китае через агенста с экспортной лицензией</li>
                    <li><i class="material-icons">adjust</i> Складские операции в Китае (Шанхае), Японии (Токио) переупаковка, пересчет</li>
                    <li><i class="material-icons">adjust</i> Экономия на таможенном оформлении</li>
                    <li><i class="material-icons">adjust</i> Экономия на стоимости доставки</li>
                    <li><i class="material-icons">adjust</i> Быстрая доставка если это авиадоставка</li>
                    <li><i class="material-icons">adjust</i> Доставка в города РФ сразу после таможенного офрмления</li>
                </ul>
            </div>
        </div>
    </div>
</section>