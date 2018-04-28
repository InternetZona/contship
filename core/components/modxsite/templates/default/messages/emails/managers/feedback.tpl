{extends file="messages/emails/managers.tpl"}

{block name=content}
    <p>Пользователь сайта отправил сообщение</p>

    <p>
        <strong>Текст сообщения: </strong>
        {if $properties.comment}
            {$properties.comment}
            {else}
            отсутствует
        {/if}
    </p>
{/block}