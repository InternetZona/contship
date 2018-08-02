<div class="row">
    <div class="col s9">
        <div class="row grid">
            <div class="col s6 cell">
                <ul class="__list __icons">
                    <li><span>[[%contship.head_office? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span></li>
                    <li class="valign-wrapper"><i class="material-icons">location_on</i> <a class="modal-trigger" href="#modal-map">[[%contship.address? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</a></li>
                    {include file="views/sections/modals/map.tpl"}
                </ul>
            </div>
            <div class="col s6 cell">
                <ul class="__list __icons">
                    <li><span>[[%contship.trade_consultations? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span></li>
                    <li class="valign-wrapper"><i class="material-icons">mail</i> <a href="mailto:info@contship.ru">info@contship.ru</a></li>
                    <li class="valign-wrapper"><i class="material-icons">phone</i> <a href="tel:+74956442341;110">+7 (495) 644-23-41 [[%contship.add_digit? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]] 110</a></li>
                </ul>
            </div>
            <div class="col s6 cell">
                <ul class="__list">
                    <li><span>[[%contship.service_department? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span></li>
                    <li><a href="tel:+74956442341;111">+7 (495) 644-23-41 [[%contship.add_digit? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]] 111</a></li>
                </ul>
            </div>
            <div class="col s6 cell">
                <ul class="__list">
                    <li><span>[[%contship.transportations_departmen? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span></li>
                    <li><a href="mailto:logistics@contship.ru">logistics@contship.ru</a></li>
                    <li><a href="tel:+74956442341;111">+7 (495) 644-23-41 [[%contship.add_digit? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]] 111</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col s3">
        <ul class="__list">
            <li><span>[[%contship.details? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span></li>
            <li>{config name=site_name}</li>
            <li>[[%contship.tax_number? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</li>
            <li>[[%contship.orgn? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</li>
        </ul>
    </div>
</div>