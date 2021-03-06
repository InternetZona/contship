{$params=[
'where' => [
'id:IN' => $data
]
,'limit'    => 0
,'cache'    => true
,'sort'    => 'menutitle'
]}

{processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=result}

{if $result.success && $result.total > 0}
    <div class="h5 bold __title">{$title}</div>
    <ul class="child-menu">
        {foreach $result.object as $object}

            {$activeClass = ($object.id == {field name=id}) ? 'active' : '' }

            <li class="col s8 l24 {$activeClass}"><a href="{$object.uri}"><i class="material-icons">chevron_right</i> {$object.menutitle|default:$object.pagetitle}</a></li>

        {/foreach}
    </ul>
{/if}