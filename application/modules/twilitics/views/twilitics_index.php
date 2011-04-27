<style>

    div.tweet{
        border-bottom: 1px solid #DDD;
        padding:8px;
        margin:8px;
    }
    div.tweet img.profile {
        float: left;
        background: black;
        border-top: 1px solid #333;
        border-left: 1px solid #333;
        border-bottom: 1px solid #666;
        border-right: 1px solid #666;
    }
    div.tweet div.text {
        margin-left: 60px;
        line-height: 16px;
        margin-right: 16px;
    }


</style>
<div class="block small left">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Twitter Account</h2>
    </div>

    <div class="block_content">
        <?php
        foreach($accounts['data'] as $r):
            $acc = unserialize($r->twitter_userdata);
            ?>
    
        <div class="tweet" style="display: block; ">
            <a href="#">
                <img class="profile" alt="<?php echo $acc->screen_name?>" width="48" height="48" src="<?php echo $acc->profile_image_url?>" />
            </a>
            <div class="text">
                <a href="#">@<?php echo $acc->screen_name?> (<?php echo $acc->name?>) </a>
            </div>
            <div class="clear"></div>
        </div>
        <?php endforeach;?>
        <div class="pagination right">
            <?php echo $pagination; ?>
        </div>

    </div>

    <div class="bendl"></div>
    <div class="bendr"></div>
</div>
<div class="block small right">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Register New Twitter Account</h2>
    </div>

    <div class="block_content">

        <div class="">Register new account twitter <?php echo anchor('twilitics/register','here')?></div>

    </div>

    <div class="bendl"></div>
    <div class="bendr"></div>
</div>