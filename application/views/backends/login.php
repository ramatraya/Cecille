<div class="block small center login">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>

        <h2>Login</h2>
        <ul>
            <li><a href="<?php echo site_url()?>">back to the site</a></li>
        </ul>

    </div>		<!-- .block_head ends -->




    <div class="block_content">

        <?php if(isset($message) && $message):?>
        <div class="message info"><?php echo $message?></div>
        <?php endif;?>

        <form action="<?php echo current_url()?>" method="post">
            <p>
                <label>Username:</label> <br />
                <input type="text" name="email" class="text" value="" />

            </p>

            <p>
                <label>Password:</label> <br />
                <input type="password" name="password"  class="text" value="" />
            </p>

            <p>
                <input type="submit" class="submit" value="Login" /> &nbsp;
            </p>
        </form>

    </div>		<!-- .block_content ends -->

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>		<!-- .login ends -->

