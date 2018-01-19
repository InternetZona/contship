{$key = rand()}

<form class="row">
    <input type="hidden" name="action" value="web/form">
    <div class="input-field col s6">
        <i class="material-icons prefix">person</i>
        <input id="callback__name-{$key}" type="text" class="validate">
        <label for="callback__name-{$key}">[[%contship.username]]</label>
    </div>
    <div class="input-field col s6">
        <i class="material-icons prefix">phone</i>
        <input id="callback__phone-{$key}" type="tel" class="validate">
        <label for="callback__phone-{$key}">[[%contship.phone]]</label>
    </div>
    <p class="col s6">
        <label>
            <input type="checkbox" checked="checked" name="confirm" />
            <span>[[%contship.form_confirm]]</span>
        </label>
    </p>
    <div class="center-align col s6">
        <button type="submit" class="btn waves-effect white black-text">[[%contship.send]]</button>
    </div>
</form>