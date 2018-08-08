{extends file="tpl/index.tpl"}

{block name=body}

    <div class="container">
        {if {field name=id} != "1"}{chunk name="pdoCrumbs"}{/if}
        <h1>{field name=pagetitle}</h1>

        {block name=page}{/block}

    </div>

{/block}
