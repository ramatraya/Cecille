<div id="fb-root"></div>
<script>
    //initializing API
    window.fbAsyncInit = function() {
        FB.init({
            appId: '<?php echo config_item('facebook_app_id')?>',
            status: true,
            cookie: true,
            xfbml: true
        });
    };
    (function() {
        var e = document.createElement('script'); e.async = true;
        e.src = document.location.protocol +
            '//connect.facebook.net/en_US/all.js';
        document.getElementById('fb-root').appendChild(e);
    }());
</script>

<div class="block ">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Facebook Registration</h2>
    </div>

    <div class="block_content">
        <?php if(isset($error)):?>
        <div class="message errormsg"><?php echo $error?></div>
        <?php endif;?>

        <fb:registration
            redirect-uri="<?php echo current_url()?>" 
            fields='[
            {"name":"name"},
            {"name":"email"},
            {"name":"password"},
            ]'></fb:registration>




    </div>
    <!-- .block_content ends -->

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>
<!-- .block.small.left ends -->
