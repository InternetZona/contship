{extends file="messages/emails/default.tpl"}

{block name=body}

    {block name=content}{/block}

    <strong>Контакты пользователя</strong>
    <ul style="list-style: none;">
        {if $properties.username}
            <li>Имя: {$properties.username}</li>
        {/if}
        {if $properties.phone}
            <li>Телефон: {$properties.phone}</li>
        {/if}
        {if $properties.email}
            <li>Email: {$properties.email}</li>
        {/if}
    </ul>
{/block}