<div class="h5 bold __title">{$title}</div>
<ul class="child-menu">
    {snippet name="pdoMenu" params=[
    'parents'   => {$parents|replace:'||':','}
    ,'templates' => {$template}
    , 'level'   => 1
    , 'tpl'  => 'wf.row.menu.tpl'
    , 'tplParentRow'  => 'wf.parent.row.menu.tpl'
    ]}
</ul>