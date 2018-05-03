{extends file="basepage.tpl"}

{block name=page}
    <section id="contactus">
        {include file="views/contacts/index.tpl"}
        <div class="h5 text-bold center-align">[[%contship.feedback_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        {include file="views/forms/feedback.tpl"}
    </section>
{/block}

{block name=body append}
    {include file="views/sections/map.tpl"}
{/block}