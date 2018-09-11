{extends file="messages/emails/managers.tpl"}

{block name=content}
    <p>Пользователь сайта отправил заявку на расчет стоимости</p>

    <p><strong>Название компании: </strong> {$properties.comment} </p>
    <p><strong>Откуда: </strong> {$properties.otkuda} </p>
    <p><strong>Куда: </strong> {$properties.kuda} </p>
    <p><strong>Вес груза Нетто: </strong> {$properties.ves} </p>
    <p><strong>Объем груза м3: </strong> {$properties.obem} </p>
    <p><strong>Код ТН ВЭД: </strong> {$properties.ved} </p>
    <p><strong>Описание: </strong> {$properties.comment} </p>
{/block}