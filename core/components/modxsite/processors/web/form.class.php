<?php
require_once MODX_CORE_PATH . 'components/modxsite/processors/site/web/form.class.php';

class modWebFormProcessor extends modSiteWebFormProcessor{

    protected $tpl_path = 'messages/emails/managers/';

    protected $manager_group_ids = array(2);

    public function initialize() {

        if (!$this->modx->smarty) {
            $this->modx->invokeEvent('OnHandleRequest');
        }

        $this->manager_message_tpl = $this->tpl_path . $this->getProperty('template') .".tpl";

        return parent::initialize();
    }

    protected function getManagerMailSubject(){
        $subject = "";
        $site_name = $this->modx->getOption('site_name');
        switch ($this->getProperty('template')) {
            case 'callback':
                $subject = "Запрос на обратный звонок с сайта {$site_name}";
                break;
            default:
                $subject = "Сообщение с сайта {$site_name}";
        }
        return $subject;
    }
}
return 'modWebFormProcessor';