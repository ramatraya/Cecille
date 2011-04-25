<div class="block small left">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Profile</h2>
    </div>		<!-- .block_head ends -->


    <div class="block_content" id="profile_block">
        <table cellspacing="0" cellpadding="0" width="100%" >
            <tr>
                <td valign="top" style="padding-top:40px;"><img src="<?php echo $profile->avatar ?>" alt="" align="center"></td>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" class="sortable">
                        <thead>
                            <tr>
                                <th class="header" colspan="3"> Profile Data</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr class="even">
                                <td>Full Name</td>
                                <td><?php echo $profile->fullname ?></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr class="odd">
                                <td>Email</td>
                                <td><?php echo $profile->email ?></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr class="even">
                                <td>Groups</td>
                                <td><?php echo $profile->group ?></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr class="odd">
                                <td>&nbsp;</td>
                                <td>
                                    <a href="<?php echo site_url('member/profile/edit')?>" class="buttonUI">Edit Profile</a>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </tbody>

                    </table>

                </td>
            </tr>
        </table>

    </div>


    <div class="bendl"></div>
    <div class="bendr"></div>

</div>


<div class="block small right">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Social Media Accounts</h2>
    </div>		<!-- .block_head ends -->


    <div class="block_content" >
        <table cellspacing="0" cellpadding="0" width="100%" class="sortable">
            <thead>
                <tr>
                    <th class="header" colspan="3"> Profile Data</th>
                </tr>
            </thead>

            <tbody>
                <tr class="odd">
                    <td>Facebook</td>
                    <td><?php  echo $profile->fb_id ? 'Connected': anchor('/member/profile/connect_facebook','Connect To Your Facebook Accounts')?></td>
                    <td><?php  echo $profile->fb_id ?  anchor('/member/profile/disconnect/facebook','disconnected') : '&nbsp;'?></td>
                </tr>
                <tr class="even">
                    <td>Twitter</td>
                    <td><?php  echo $profile->twitter_id ? 'Connected': anchor('/member/profile/connect_twitter','Connect To Your Twitter Accounts')?></td>
                    <td><?php  echo $profile->twitter_id ?  anchor('/member/profile/disconnect/twitter','disconnected') : '&nbsp;'?></td>
                </tr>
            </tbody>

        </table>
    </div>
    <div class="bendl"></div>
    <div class="bendr"></div>
</div>