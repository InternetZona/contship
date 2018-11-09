<footer class="page-footer">
    <div class="container">
        <ul id="nav-footer">

            {$params= [
                'startId' => '0'
                , 'excludeDocs'=> '1'
            , 'level'=> '1'
                , 'rowTpl'  => 'wf.row.main.tpl'
            ]}

            {snippet name="Wayfinder@Menu" params=$params}
        </ul>
        <div class="h5 center-align">Наши популярные услуги</div>
        <ul id="nav-footer">
            <li><a href="{$modx->makeUrl(11)}">Международные авиаперевозки</a></li>
            <li><a href="{$modx->makeUrl(38)}">Логистика для интернет-магазинов</a></li>
            <li><a href="{$modx->makeUrl(14)}">Хранение грузов</a></li>
            <li><a href="{$modx->makeUrl(53)}">Доставка грузов из Китая в Москву</a></li>
            <li><a href="{$modx->makeUrl(79)}">Доставка товаров из Сингапура в Россию</a></li>
            <li><a href="{$modx->makeUrl(57)}">Отправка грузов из Италии в Россию</a></li>
            <li><a href="{$modx->makeUrl(69)}">Грузоперевозки из Польши в Москву</a></li>
        </ul>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © {$smarty.now|date_format:"%Y"} [[%contship.copy? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]
            <a class="grey-text text-lighten-4" href="/assets/files/politic.doc" target="_blank">[[%contship.policy? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</a>
            <label><div class="grey-text text-lighten-4">* Предложения на сайте не являются публичной офертой</div></label>
        </div>
    </div>
</footer>