{extends file="basepage.tpl"}

{block name=page}
    <ul id="testimonials-list">

        {foreach {tv name=testimonials}|json_decode:true|array_reverse as $data}
            <li class="__item">
                <div class="h5">
                    {$data.title}
                </div>
                <div class="valign-wrapper __summary">
                    <i class="material-icons tiny">person_pin</i>
                    <small> {$data.autor} </small>
                    <i class="material-icons tiny">av_timer</i>
                    <small> {$data.createdon|date_format:"%d-%m-%Y"} </small>
                </div>
                <p>{$data.text}</p>
            </li>
        {/foreach}

    </ul>
{/block}