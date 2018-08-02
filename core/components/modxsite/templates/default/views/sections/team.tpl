<section id="team" class="section grey lighten-4">
    <div class="container">
        <div class="h5 text-bold center-align __title">[[%contship.team_title? &topic=`contship` &namespace=`modxsite` &language=`[[++cultureKey]]`]]</div>
        <div class="row">

            {if $tvData}
                {foreach $tvData as $data}
                    <div class="col s3">
                        {include file="" data=$data}
                    </div>
                {/foreach}
            {/if}
        </div>
    </div>
</section>