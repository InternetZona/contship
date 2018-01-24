<div class="h5 bold __title">{$title}</div>
<ul class="child-menu">
    {snippet name="Wayfinder@Menu" params=[
    'startId'   => $parent
    , 'level'   => 1
    , 'rowTpl'  => 'wf.row.menu.tpl'
    , 'parentRowTpl'  => 'wf.parent.row.menu.tpl'
    ]}
</ul>