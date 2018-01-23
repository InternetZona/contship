
<div id="lang-desktop" class="fixed-action-btn">
    <a class="btn-floating transparent">

        {$culture = {config name=cultureKey}}

        {if $culture == 'ru'}
            {$flag = '#russia'}
        {elseif $culture == 'en'}
            {$flag = '#united-kingdom'}
        {else}
            {$flag = '#china'}
        {/if}

        <svg class="icon">
            <use xlink:href="{$flag}" />
        </svg>
    </a>
    <ul>
        <li><a class="btn-floating transparent">
                <svg class="icon">
                    <use xlink:href="#russia" />
                </svg>
            </a></li>
        <li><a class="btn-floating transparent">
                <svg class="icon">
                    <use xlink:href="#united-kingdom" />
                </svg>
            </a></li>
        <li><a class="btn-floating transparent">
                <svg class="icon">
                    <use xlink:href="#china" />
                </svg>
            </a></li>
    </ul>
</div>