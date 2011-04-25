

<div class="block small left">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Register With Us</h2>
    </div>

    <div class="block_content">
        <?php if(isset($message) && $message): ?>
        <div class="message errormsg"><?php echo $message ?></div>
        <?php endif; ?>

        <form action="<?php echo current_url() ?>" method="post">
            <p>
                <label>Your Name:</label><br />
                <input type="text" name="fullname" value="<?php echo set_value('fullname') ?>" class="text" />
            </p>
            <p>
                <label>Email:</label><br />
                <input type="text" name="email" value="<?php echo set_value('email') ?>" class="text" />
            </p>
            <p>
                <label>Password:</label><br />
                <input type="password" value=""  name="password"  class="text" />
            </p>
            <p>
                <label>Confirm Password:</label><br />
                <input type="password" value=""  name="password_confirm"  class="text" />
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

        <div id="facebook_reg">
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
                    FB.getLoginStatus(function (response) {
                        if(response.status == 'connected'){
                            window.location = "<?php echo site_url('member/registration/fb')?>";
                        }
                    });

                };
                (function() {
                    var e = document.createElement('script'); e.async = true;
                    e.src = document.location.protocol +
                        '//connect.facebook.net/en_US/all.js';
                    document.getElementById('fb-root').appendChild(e);
                }());
            </script>
            <fb:login-button 
                autologoutlink="true"
                perms="email,user_birthday,status_update,publish_stream"
                registration-url="<?php echo site_url('member/registration/fb')?>"
                ></fb:login-button>


        </div>
        <div id="twitter_reg">

        </div>
    </div>
    <!-- .block_content ends -->

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>		<!-- .block.small.right ends -->


