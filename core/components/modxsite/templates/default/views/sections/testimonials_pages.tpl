<section id="testimonials" class="section">
        <div class="h3 text-bold center-align __title">{$object.pagetitle}</div>

        <div class="row">
            <div class="col s24 m24 l24 xl24">
                {$tvData = $object.tvs.testimonials.value|json_decode:true|array_slice:-10|array_reverse}

                {if $tvData}
                    <div id="testimonials-carousel" class="carousel carousel-slider center" data-speed="10000">

                        {foreach $tvData as $data}
                            <div class="carousel-item" href="#slide-{$data.MIGX_id}">
                                <div class="shell">
                                    <div class="h2">{$data.title}</div>
                                    <p>{$data.text}</p>
                                    <ul>
                                        <li class="h6">{$data.autor}</li>
                                        <li class="small">{$data.createdon|date_format:"%d-%m-%Y"}</li>
                                    </ul>
                                </div>
                            </div>
                        {/foreach}

                    </div>
                {/if}
            </div>
        </div>

</section>