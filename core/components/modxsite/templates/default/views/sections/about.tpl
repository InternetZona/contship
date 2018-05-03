<section id="aboutus">
    <div class="container">
        <h2 class="text-bold center-align __title">{$object.pagetitle}</h2>
        <div class="row">
            <div class="col offset-s2 s20 content-wrapper">
                {field name=content}
            </div>
        </div>
    </div>
</section>

{include file="views/work.tpl" tvData=$object.tvs.schemeWork.value|json_decode:true}
{include file="views/sections/featured.tpl" tvData=$object.tvs.featured.value|json_decode:true}