<div class="form-wrapper">
    <div class="form-title h6 center-align text-bold">
        Опишите вашу ситуацию или требования к логистике, и мы быстро ответим вам!
    </div>

    {$key = rand()}

    <form>
        <div class="input-field">
            <input id="request__name-{$key}" type="text" class="validate">
            <label for="request__name-{$key}">Ваше имя</label>
        </div>
        <div class="input-field">
            <input id="request__email-{$key}" type="email" class="validate">
            <label for="request__email-{$key}">E-mail</label>
        </div>
        <div class="input-field">
            <textarea id="request__comment-{$key}" class="materialize-textarea"></textarea>
            <label for="request__comment-{$key}">Комментарий</label>
        </div>
        <p>
            <label>
                <input type="checkbox" checked="checked" />
                <span>[[%contship.form_confirm]]</span>
            </label>
        </p>
        <div class="center-align">
            <button type="submit" class="btn waves-effect">Отправить</button>
        </div>
    </form>
</div>