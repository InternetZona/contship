<section id="goods" class="section">
    <div class="container">
        <div class="h5 text-bold center-align">[[%contship.goods]]</div>
        <div class="row grid">
            {foreach {tv name=goodsDelivery}|json_decode:true as $data}
                {include file="views/goods/item.tpl" data=$data}
            {/foreach}
        </div>
    </div>
</section>