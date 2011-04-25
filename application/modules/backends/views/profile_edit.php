<div class="block">

    <?php if (isset($breadcrumb) && $breadcrumb): ?>
    <p class="breadcrumb">
            <?php echo implode("»", $breadcrumb); ?>
    </p>
    <?php endif; ?>

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Profile</h2>
        <ul>
            <li><img src="<?php echo $profile->avatar ?>" alt="" align="center"></li>
        </ul>
    </div>		<!-- .block_head ends -->


    <div class="block_content" id="profile_block">
        <?php if (validation_errors ()): ?>
        <div class="message errormsg"><?php echo validation_errors() ?></div>
        <?php endif; ?>

        <?php if (isset($errors)): ?>
        <div class="message errormsg"><?php echo $errors ?></div>
        <?php endif; ?>

        <div id="change-password">
            <form id="form-change-password" method="post" action="">
                <p>
                    <label>Full Name:</label><br />
                    <input type="text" class="text" name="fullname" value="<?php echo $profile->fullname ?>">
                </p>

                <p>
                    <label>Old Password:</label><br />
                    <input type="password" class="text" name="old" value=""><br />
                    <span class="note">*Leave blank for ignoring update the password</span>
                </p>
                <p>
                    <label>New Password:</label><br />
                    <input type="password" class="text" name="new" value="">
                </p>

                <p>
                    <label>Confirm New Password:</label><br />
                    <input type="password" class="text" name="confirm" value="">
                </p>
                <p>
                    <input type="submit" value="Submit" class="buttonUI right">
                </p>
            </form>
        </div>
    </div>

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>

