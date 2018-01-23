<div id="featured" class="row">

    {assign var=params value=[
    'where' => [
    'id'    => 3
    ]
    , 'current' => true
    ]}

    {processor action="site/web/resources/getdata" ns="modxsite" params=$params assign=result}

    {if $tvData = $result.object.tvs.featured.value|json_decode:true}
        {foreach $tvData as $data}
            <div class="col s12 m6 l3">
                {include file="views/featured/item.tpl" data=$data}
            </div>
        {/foreach}
    {/if}
</div>