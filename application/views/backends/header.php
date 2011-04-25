<div id="header">
    <div class="hdrl"></div>
    <div class="hdrr"></div>

    <h1><a href="<?php echo site_url() ?>"><?php echo $this->config->item('app_title'); ?></a></h1>

    <ul id="nav">
        <li><a href="<?php echo site_url('/backends') ?>">Dashboard</a></li>
        <li><a href="<?php echo site_url('/backends/profile') ?>">Profile</a></li>
        <!--
        <li><a href="<?php echo site_url('/page/backends/') ?>">Pages</a></li>
        <li><a href="<?php echo site_url('/member/backends') ?>">Members</a></li>
        <li>
            <a href="<?php echo site_url('/article/backends/') ?>">Articles</a>
            <ul>
                <li><a href="<?php echo site_url('/article/backends/category/1') ?>">Category: News</a></li>
                <li><a href="<?php echo site_url('/article/backends/category/2') ?>">Category: Next Performance</a></li>
            </ul>

        </li>
        <li><a href="<?php echo site_url('/gallery/backends') ?>">Gallery</a></li>
        <li><a href="<?php echo site_url('/video/backends') ?>">Video</a></li>
        -->
    </ul>

    <p class="user">Hello, <a href="<?php echo site_url('/backends/profile') ?>"><?php echo $profile->fullname ?></a> | <a href="<?php echo site_url('backends/logout') ?>">Logout</a></p>

</div>