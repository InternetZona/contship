<section class="request-form-block">
    <div class="parallax-container">
        <div class="parallax"><img src="{$template_url}images/parallax.jpg"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col s24 l12 white-text">
                <div class="__wrapper">
                    <a class="btn-floating btn-large white waves-light waves-effect">
                        <i class="material-icons">arrow_downward</i>
                    </a>
                </div>
                <div class="h4 text-bold">[[%contship.featured]]</div>
                <ul class="featured-list">
                    {foreach $tvData as $data}
                        <li><i class="material-icons">adjust</i> {$data.title}</li>
                    {/foreach}
                </ul>
            </div>
            <div class="col s24 offset-l2 l10 offset-xl4 xl8">
                {include file="views/forms/request.tpl"}
            </div>
        </div>
    </div>
</section>