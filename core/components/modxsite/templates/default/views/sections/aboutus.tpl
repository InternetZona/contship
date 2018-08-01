<section id="aboutus">
    <div class="container">
        <div class="h4 text-bold center-align __title">{$object.pagetitle}</div>
        <div class="row">
            <div class="col offset-s1 s10 content-wrapper">
                {$object.content}
            </div>
        </div>
        {include file="views/button.view.tpl" link={$object.uri}}
    </div>
</section>

{include file="views/sections/scheme.work.tpl" tvData=$object.tvs.schemeWork.value|json_decode:true}
{include file="views/sections/featured.tpl" tvData=$object.tvs.featured.value|json_decode:true}
{include file="views/sections/team.tpl" tvData=$object.tvs.team.value|json_decode:true}