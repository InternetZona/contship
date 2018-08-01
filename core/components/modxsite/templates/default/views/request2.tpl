<section class="request-content section-inverse">
    <div class="row grid">
        <div class="col s24 m12 valign-wrapper">
            <div class="h4 text-bold center-align">Оставить запрос</div>
        </div>
        <div class="col s24 m12 valign-wrapper">
            <form name="request" class="row">
                <input type="hidden" name="action" value="web/form">
                <input type="hidden" name="subject" value="Заявка по услуге - [[+pagetitle]]">
                <div class="input-field col s24 m12">
                    <i class="material-icons prefix">person</i>
                    <input id="request__name-[[+id]]" type="text" name="username">
                    <label for="request__name-[[+id]]">[[%contship.username? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
                </div>
                <div class="input-field col s24 m12">
                    <i class="material-icons prefix">email</i>
                    <input id="request__email-[[+id]]" type="email" name="email">
                    <label for="request__email-[[+id]]">[[%contship.email? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]] <sup>*</sup></label>
                </div>
                <div class="input-field col s24">
                    <i class="material-icons prefix">create</i>
                    <textarea id="request__comment-[[+id]]" class="materialize-textarea" name="comment"></textarea>
                    <label for="request__comment-[[+id]]">[[%contship.comment? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</label>
                </div>
                <p class=" col s24">
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
</section>
