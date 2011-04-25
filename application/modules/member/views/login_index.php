
<div class="block small left">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Login</h2>
    </div>

    <div class="block_content">
        <?php if(isset($message) && $message): ?>
        <div class="message errormsg"><?php echo $message ?></div>
        <?php endif; ?>

        <form action="<?php echo current_url() ?>" method="post">
            <p>
                <label>Email:</label><br />
                <input type="text" name="email" value="<?php echo set_value('email') ?>" class="text" />
            </p>
            <p>
                <label>Password:</label><br />
                <input type="password" value=""  name="password"  class="text" />
            </p>
            <p>by registering, youre bond with the devil</p>
            <p><input type="submit" class="submit small" value="Register" /></p>

        </form>

    </div>
    <!-- .block_content ends -->

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>
<!-- .block.small.left ends -->

<div class="block small right">
    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Use Your Social Media Account</h2>
    </div>
    <!-- .block_head ends -->



    <div class="block_content">
        <div id="facebook_reg" style="padding:4px;margin:4px;">
            <h2>Use Your Facebook Account</h2>
            <p>You can also Login then register with your facebook account</p>
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

                function auth_using_fb(){
                    window.location = "<?php echo site_url('member/login/fb')?>";
                }
            </script>
            <fb:login-button perms="email,user_birthday,status_update,publish_stream"  length="long" onlogin="auth_using_fb();"></fb:login-button>
        </div>
        <div style='background:url("images/backends/ft.gif") repeat-x scroll 0 0 transparent;'>&nbsp;</div>
        <div id="twitter_reg" style="padding:4px;margin:4px;">
            <h2>Use Your Twitter Account</h2>
            <p>You can also Login and register with your twitter account</p>
            <a href="<?php echo site_url('member/login/twitter')?>"><img alt="Sign in with Twitter (Lighter Style)" src="images/backends/sign-in-with-twitter-l.png"></a>

        </div>
    </div>
    <!-- .block_content ends -->

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>
<!-- .block.small.right ends -->


