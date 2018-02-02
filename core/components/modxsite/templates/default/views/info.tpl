<section id="info">
    <div class="container">
        <h1>{field name=pagetitle}</h1>
        <div class="row grid">
            <div class="col s24 xl16 pull-xl8">
                {field name=introtext}
            </div>
            <div class="col s24 l12 cell">

                {$tvData = {tv name=aboutServices}|json_decode:true|array_slice:-3}

                {foreach $tvData as $data}


                    <div class="info__item">
                        <span class="iconbox"><i class="{$data.icon}"></i></span>
                        <div class="h5">{$data.title}</div>
                        <p>{$data.description}</p>
                    </div>

                {/foreach}
            </div>
            <div class="col s24 l12 cell center-align">
                <div class="info-wrapper hide-on-med-and-down">
                    <img src="{$template_url}images/about-us.jpg" alt="{field name=pagetitle}" class="responsive-img">
                </div>
                <a href="assets/files/contship_presentation.pdf" class="btn btn-large waves-effect waves-light" target="_blank">
                    <i class="material-icons left">visibility</i> [[%contship.presentations? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col s24 offset-m1 m22 offset-l4 l16">
                <div class="video-wrapper center-align z-depth-4">
                    <video class="responsive-video" controls>
                        <source src="{$template_url}video/demo.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>
    </div>
</section>