<div class="h5 bold __title">{$title}</div>
    {snippet name="pdoMenu" params=[
    'parents'   => {$parents|replace:'||':','}
    ,'resources' => {$exclude}
    ,'templates' => {$template}
    , 'level'   => 1
    , 'tpl'  => 'wf.row.menu.tpl'
    , 'tplParentRow'  => 'wf.parent.row.menu.tpl'
    , 'outerClass' => 'child-menu'
    ]}