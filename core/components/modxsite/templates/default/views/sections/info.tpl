<section id="info">
    <div class="container">
        <h1>{field name=pagetitle}</h1>
        <div class="row grid">
            <div class="col pull-s4 s8">
                {field name=introtext}
            </div>
            <div class="col s6 cell">

                {$tvData = {tv name=aboutServices}|json_decode:true|array_slice:-3}

                {foreach $tvData as $data}


                    <div class="info__item">
                        <span class="iconbox"><i class="{$data.icon}"></i></span>
                        <div class="h5">{$data.title}</div>
                        <p>{$data.description}</p>
                    </div>

                {/foreach}
            </div>
            <div class="col s6 cell center-align">
                <div class="info-wrapper">
                    <img src="{$template_url}images/about-us.jpg" alt="{field name=pagetitle}" class="responsive-img">
                </div>
                <a href="#" class="btn btn-large waves-effect waves-light">
                    <i class="material-icons left">visibility</i> [[%contship.presentation? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]
                </a>
            </div>
        </div>
    </div>
</section>