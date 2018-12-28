{extends file="basepage.tpl"}

{block name=page}
    <div id="page-blog">
        <div class="row grid">

            {assign var=params value=[
            'where' => [
            'parent'    => {field name=id}
            ],
            'limit'    => 15,
            'sort'  => 'menuindex',
            'dir'   => 'asc',
            'getPage'   => true,
            'page'      => $smarty.get.page|default: 0
            ]}

            {processor action='site/web/resources/getdata' ns='modxsite' params=$params assign=result}

            {if $result.success}
                {foreach $result.object as $object}
                    <div class="col s24 m12 xl8 cell">
                        <div class="__item">
                            <a class="__image" href="{$object.uri}">

                                {assign var=thumb value=[
                                "input" => $object.tvs.image.value,
                                "options" => "&w=420&h=280&zc=1&aoe=0&far=0"
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
            <ul class="pagination col s24 m24 l24 xl24">
                [[+page.nav]]
            </ul>
        </div>
    </div>
{/block}