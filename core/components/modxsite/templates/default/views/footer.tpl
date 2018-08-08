<footer class="page-footer">
    <div class="container">
        <ul id="nav-footer">

            {$params= [
                'startId' => '0'
                , 'excludeDocs'=> '1'
            , 'level'=> '1'
                , 'rowTpl'  => 'wf.row.main.tpl'
            ]}

            {snippet name="Wayfinder@Menu" params=$params}
        </ul>
    </div>
    <div class="footer-copyright">
        <div class="container">
            © {$smarty.now|date_format:"%Y"} [[%contship.copy? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]
            <a class="grey-text text-lighten-4" href="/assets/files/politic.doc" target="_blank">[[%contship.policy? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</a>
        </div>
    </div>
</footer>