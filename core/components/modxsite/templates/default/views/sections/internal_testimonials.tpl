{assign var=params value=[
'where' => [
'id:IN' => [2,3,4,5,6,7]
]
]}

{processor action="site/web/resources/getdata" params=$params ns="modxsite" assign=pages}
<!--noindex-->
{include file="views/sections/testimonials_pages.tpl" object=$pages.object[4]|default:[]}
<!--/noindex-->