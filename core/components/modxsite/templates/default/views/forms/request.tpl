<div class="form-wrapper">
    <div class="form-title h6 center-align text-bold">
        [[%contship.request_title]]
    </div>

    {$key = rand()}

    <form>
        <div class="input-field">
            <i class="material-icons prefix">person</i>
            <input id="request__name-{$key}" type="text" class="validate">
            <label for="request__name-{$key}">[[%contship.username]]</label>
        </div>
        <div class="input-field">
            <i class="material-icons prefix">email</i>
            <input id="request__email-{$key}" type="email" class="validate">
            <label for="request__email-{$key}">[[%contship.email]]</label>
        </div>
        <div class="input-field">
            <i class="material-icons prefix">create</i>
            <textarea id="request__comment-{$key}" class="materialize-textarea"></textarea>
            <label for="request__comment-{$key}">[[%contship.comment]]</label>
        </div>
        <p>
            <label>
                <input type="checkbox" checked="checked" />
                <span>[[%contship.form_confirm]]</span>
            </label>
        </p>
        <div class="center-align">
            <button type="submit" class="btn waves-effect">[[%contship.send]]</button>
        </div>
    </form>
</div>