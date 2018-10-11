<div class="clear"></div>
{if $menu = {snippet name="pdoMenu" params=[
'parents'   => {$parents|replace:'||':','}
,'resources' => {$exclude}
,'templates' => {$template}
, 'level'   => 1
, 'tpl'  => 'wf.row.menu.tpl'
, 'tplParentRow'  => 'wf.parent.row.menu.tpl'
, 'outerClass' => 'child-menu'
]}}
    <div class="h5 bold __title">{$title}</div>
    <!--noindex-->{$menu}<!--/noindex-->
{/if}