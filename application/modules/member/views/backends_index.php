<div class="block">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Members</h2>
        <form method="post" action="<?php echo site_url('member/backends/searchsubmit') ?>" id="frmSearch">
            <input id="searchInput" type="text" value="Search" class="text">
        </form>
    </div>

    <div class="block_content">

        <?php echo get_breadcrumbs($breadcrumbs); ?>

        <form method="post" action="">

            <table cellspacing="0" cellpadding="0" width="100%" class="sortable">

                <thead>
                    <tr>
                        <th>Data Members</th>
                        <th>Status</th>
                        <th>Last Login</th>
                        <td>&nbsp;</td>
                    </tr>
                </thead>

                <tbody>
                    <?php foreach ($users['data'] as $user): ?>
                        <tr>
                            <td>
                                <strong style="display:block;"><?php echo $user->fullname?> </strong>
                                <?php echo $user->email?>
                            </td>
                            <td><?php echo status($user->active)?></td>
                            <td><?php echo date('Y-m-d H:i',$user->last_login)?></td>
                            <td class="delete">
                                <a href="#" class="delete buttonUI">Set Status</a>
                                <a href="#" class=" buttonUI">Delete</a>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                </tbody>

            </table>

            <div class="pagination right">
                <?php echo $pagination?>
            </div>		

        </form>

    </div>

    <div class="bendl"></div>
    <div class="bendr"></div>
</div>