{extends file="basepage.tpl"}

{block name=page}
    <div id="page-blog">
        <div class="row grid">
            {assign var=params value=[
                'parent'    => {field name=id}
                , 'dir'     => 'desc'
            ]}

            {processor action='site/web/resources/getdata' ns='modxsite' params=$params assign=result}

            {if $result.success}
                {foreach $result.object as $object}
                    <div class="col s12 m6 xl4 cell">
                        <div class="__item">
                            <a class="__image" href="{$object.uri}">

                                {assign var=thumb value=[
                                "input" => $object.tvs.image.value,
                                "options" => "&w=360&h=240&zc=1&aoe=0&far=0"
                                ]}

                                <img alt="{$object.pagetitle}" class="responsive-img" src="{snippet name="phpthumbon" params=$thumb}">
                            </a>
                            <div class="__detail">
                                <div class="h5 __title"><a href="{$object.uri}">{$object.pagetitle}</a></div>
                                <p>{$object.introtext}</p>
                            </div>
                        </div>
                    </div>
                {/foreach}
            {/if}
        </div>
    </div>
{/block}