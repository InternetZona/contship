<div id="callback-content" class="section--inverse">
    <div class="row grid">
        <div class="col s24 xl10 cell valign-wrapper">
            <div class="h-title bold">
                [[+title]]
            </div>
        </div>
        <div class="col s24 xl14 cell">

            <form name="callback" class="row">
                <input type="hidden" name="action" value="web/form">
                <div class="input-field col s24 l12">
                    <i class="material-icons prefix">person</i>
                    <input id="callback__name-[[+id]]" type="text" name="username">
                    <label for="callback__name-[[+id]]">[[%contship.username? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
                </div>
                <div class="input-field col s24 l12">
                    <i class="material-icons prefix">phone</i>
                    <input id="callback__phone-[[+id]]" type="tel" name="phone">
                    <label for="callback__phone-[[+id]]">[[%contship.phone? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]] <sup>*</sup></label>
                </div>
                <p class="col s24">
                    <label>
                        <input type="checkbox" checked="checked" name="agree" />
                        <span>[[%contship.form_confirm? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</span>
                    </label>
                </p>
                <div class="center-align col s24">
                    <button type="submit" class="btn waves-effect">[[%contship.send? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</button>
                </div>
            </form>

        </div>
    </div>
</div>