<div class="form-wrapper">
    <div class="form-title h5 center-align text-bold">
        [[%contship.request_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]
    </div>

    {$key = rand()}

    <form name="request" class="row">
        <input type="hidden" name="action" value="web/form">
        <input type="hidden" name="subject" value="{$subject}">
        <div class="input-field col s24 m12 l24">
            <i class="material-icons prefix">person</i>
            <input id="request__name-{$key}" type="text" name="username">
            <label for="request__name-{$key}">[[%contship.username? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
        </div>
        <div class="input-field col s24 m12 l24">
            <i class="material-icons prefix">email</i>
            <input id="request__email-{$key}" type="email" name="email">
            <label for="request__email-{$key}">[[%contship.email? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]] <sup>*</sup></label>
        </div>
        <div class="input-field col s24">
            <i class="material-icons prefix">create</i>
            <textarea id="request__comment-{$key}" class="materialize-textarea" name="comment"></textarea>
            <label for="request__comment-{$key}">[[%contship.comment? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
        </div>
        <p class=" col s24">
            <label>
                <input type="checkbox" checked="checked" name="agree" />
                <span>[[%contship.form_confirm? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
            </label>
        </p>
        <div class="center-align col s24">
            <button onclick="yaCounter10207042.reachGoal('zapros');" type="submit" class="btn waves-effect">[[%contship.send? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</button>
        </div>
    </form>
</div>