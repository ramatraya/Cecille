

<div class="block small left">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Register With Your Twitter Account</h2>
    </div>

    <div class="block_content">
        <?php if(isset($message) && $message): ?>
            <div class="message errormsg"><?php echo $message ?></div>
        <?php endif; ?>

            <form action="<?php echo current_url() ?>" method="post">
                <p>
                    <label>Your Name:</label><br />
                    <input type="text" name="fullname" value="<?php echo set_value('fullname',$twitter->name) ?>" class="text" />
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
            <h2>Twitter Account</h2>
        </div>
        <!-- .block_head ends -->



        <div class="block_content">
            <h2>Hello, <?php echo $twitter->name?></h2>
            <div>
                <img src="<?php echo $twitter->profile_image_url?>"/>
            </div>
            <div><?php echo $twitter->screen_name?> </div>

    </div>
    <!-- .block_content ends -->

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>		<!-- .block.small.right ends -->


