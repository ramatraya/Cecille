<div id="header">
    <div class="hdrl"></div>
    <div class="hdrr"></div>

    <h1><a href="<?php echo site_url() ?>"><?php echo $this->config->item('app_title'); ?></a></h1>

    <ul id="nav">
        <li><a href="<?php echo site_url('/backends') ?>">Dashboard</a></li>
        <li><a href="<?php echo site_url('/backends/profile') ?>">Profile</a></li>
    </ul>

    <p class="user">Hello, <a href="<?php echo site_url('/member/profile') ?>"><?php echo $profile->fullname ?></a> | <a href="<?php echo site_url('member/logout') ?>">Logout</a></p>

</div>