{$key = rand()}

<form class="row">
    <input type="hidden" name="action" value="web/form">
    <div class="input-field col s24 l12">
        <i class="material-icons prefix">person</i>
        <input id="callback__name-{$key}" type="text" class="validate">
        <label for="callback__name-{$key}">[[%contship.username? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
    </div>
    <div class="input-field col s24 l12">
        <i class="material-icons prefix">phone</i>
        <input id="callback__phone-{$key}" type="tel" class="validate">
        <label for="callback__phone-{$key}">[[%contship.phone? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
    </div>
    <p class="col s24">
        <label>
            <input type="checkbox" checked="checked" name="confirm" />
            <span>[[%contship.form_confirm? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
        </label>
    </p>
    <div class="center-align col s24">
        <button type="submit" class="btn waves-effect white black-text">[[%contship.send? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</button>
    </div>
</form>