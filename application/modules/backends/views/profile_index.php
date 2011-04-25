<div class="block small left">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Profile</h2>
        <ul>
            <li><img src="<?php echo $profile->avatar ?>" alt="" align="center"></li>
        </ul>
    </div>		<!-- .block_head ends -->


    <div class="block_content" id="profile_block">
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
                        <a href="<?php echo site_url('backends/profile/edit')?>" class="buttonUI">Edit Profile</a>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </tbody>

        </table>
    </div>

    <div class="bendl"></div>
    <div class="bendr"></div>

</div>


<div class="block small right">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Social Media Account</h2>
    </div>		


    <div class="block_content" >
        <table cellspacing="0" cellpadding="0" width="100%" class="sortable">
            <thead>
                <tr>
                    <th class="header" colspan="3"> Profile Data</th>
                </tr>
            </thead>

            <tbody>
                <tr class="even">
                    <td>Facebook</td>
                    <td><?php echo $profile->fullname ?></td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="odd">
                    <td>Twitter</td>
                    <td><?php echo $profile->email ?></td>
                    <td>&nbsp;</td>
                </tr>
                <tr class="even">
                    <td>Groups</td>
                    <td><?php echo $profile->group ?></td>
                    <td>&nbsp;</td>
                </tr>
            </tbody>

        </table>
    </div>
    <div class="bendl"></div>
    <div class="bendr"></div>
</div>
<div class="clear"></div>
