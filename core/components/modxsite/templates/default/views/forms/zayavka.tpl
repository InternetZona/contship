{$key = rand()}
<div class="form-wrapper">
<form name="zayavka" class="row">
    <input type="hidden" name="action" value="web/form">
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">home</i>
        <input id="zayavka__companyname-{$key}" type="text" name="companyname">
        <label for="zayavka__companyname-{$key}">Название компании</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">person</i>
        <input id="zayavka__username-{$key}" type="text" name="username" class="require-group">
        <label for="zayavka__username-{$key}">Контактное лицо</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">phone</i>
        <input id="zayavka__phone-{$key}" type="tel" name="phone" class="require-group">
        <label for="zayavka__phone-{$key}">Телефон</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">mail</i>
        <input id="zayavka__email-{$key}" type="email" name="email" class="require-group">
        <label for="zayavka__email-{$key}">E-mail</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">undo</i>
        <input id="zayavka__otkuda-{$key}" type="text" name="otkuda" class="require-group">
        <label for="zayavka__otkuda-{$key}">Откуда</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">redo</i>
        <input id="zayavka__kuda-{$key}" type="text" name="kuda" class="require-group">
        <label for="zayavka__kuda-{$key}">Куда</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">line_weight</i>
        <input id="zayavka__ves-{$key}" type="text" name="ves" class="require-group">
        <label for="zayavka__ves-{$key}">Вес груза нетто</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">picture_in_picture_alt</i>
        <input id="zayavka__obem-{$key}" type="text" name="obem">
        <label for="zayavka__obem-{$key}">Объем груза м3</label>
    </div>
    <div class="input-field col s24 l8">
        <i class="material-icons prefix">gradient</i>
        <input id="zayavka__ved-{$key}" type="text" name="ved">
        <label for="zayavka__ved-{$key}">Код ТН ВЭД</label>
    </div>
    <div class="input-field col s24">
        <i class="material-icons prefix">description</i>
        <textarea id="feedback__comment-{$key}" class="materialize-textarea" name="comment" class="require-group"></textarea>
        <label for="feedback__comment-{$key}">Описание груза</label>
    </div>
    <p class="col s24">
        <label>
            <input type="checkbox" checked="checked" name="agree" />
            <span>[[%contship.form_confirm? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
        </label>
    </p>
    <div class="center-align col s24">
        <button type="submit" class="btn waves-effect">Оставить заявку</button>
    </div>
</form>
</div>