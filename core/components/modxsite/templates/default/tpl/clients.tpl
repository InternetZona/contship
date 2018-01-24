{extends file="basepage.tpl"}

{block name=page}
    <div id="page-clients">

        <div class="content-wrapper">
            {field name=content}
        </div>

        <div class="row">
            {foreach {tv name=clients}|json_decode:true as $data}
                <div class="col s12 m6 l4 xl3">
                    <div class="__item">
                        <div class="overlay"></div>

                        {assign var=thumb value=[
                            "input" => $data.logo,
                            "options" => "&w=170&h=110&zc=0&aoe=0&far=0"
                        ]}

                        <img class="responsive-img" src="{snippet name="phpthumbon" params=$thumb}" alt="{$data.name}">

                        <div class="info">
                            <div class="h5 __title">{$data.name}</div>
                        </div>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
{/block}