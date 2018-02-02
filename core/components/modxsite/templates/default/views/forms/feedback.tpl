<div class="form-wrapper">
    {$key = rand()}

    <form class="row">
        <input type="hidden" name="action" value="web/form">
        <div class="input-field col s24 l8">
            <i class="material-icons prefix">person</i>
            <input id="feedback__name-{$key}" type="text" class="validate">
            <label for="feedback__name-{$key}">[[%contship.username? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
        </div>
        <div class="input-field col s24 l8">
            <i class="material-icons prefix">phone</i>
            <input id="feedback__phone-{$key}" type="tel" class="validate">
            <label for="feedback__phone-{$key}">[[%contship.phone? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
        </div>
        <div class="input-field col s24 l8">
            <i class="material-icons prefix">mail</i>
            <input id="feedback__email-{$key}" type="tel" class="validate">
            <label for="feedback__email-{$key}">[[%contship.email? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
        </div>
        <div class="input-field col s24">
            <i class="material-icons prefix">create</i>
            <textarea id="feedback__comment-{$key}" class="materialize-textarea"></textarea>
            <label for="feedback__comment-{$key}">[[%contship.comment? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
        </div>
        <p class="col s24">
            <label>
                <input type="checkbox" checked="checked" name="confirm" />
                <span>[[%contship.form_confirm? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
            </label>
        </p>
        <div class="center-align col s24">
            <button type="submit" class="btn waves-effect">[[%contship.send? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</button>
        </div>
    </form>
</div>