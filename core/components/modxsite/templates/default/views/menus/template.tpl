<div class="h5 bold __title">{$title}</div>
<ul class="child-menu">
    {$parents|replace:'||':','}
    {snippet name="Wayfinder@Menu" params=[
    'startId'   => $parents
    , 'template'=> $template
    , 'level'   => 1
    , 'rowTpl'  => 'wf.row.menu.tpl'
    , 'parentRowTpl'  => 'wf.parent.row.menu.tpl'
    ]}
</ul>