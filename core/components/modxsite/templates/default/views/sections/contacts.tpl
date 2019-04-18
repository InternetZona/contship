<section id="contactus" class="section">
    <div class="container">
        <div class="h3 text-bold center-align __title">Контакты</div>
        {include file="views/contacts/index.tpl"}
    </div>
    {snippet name="AjaxSnippet" params=[
    'snippet'   => 'load'
    ,'tpl'     => 'map.tpl'
    ,'parents' => '0'
    , 'as_mode'  => 'onscroll'
    , 'loadtext'  => ''
    ]}
</section>