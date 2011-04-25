
<!-- pages-->
<div class="block">

    <div class="block_head">
        <div class="bheadl"></div>
        <div class="bheadr"></div>
        <h2>Member Account</h2>
        <form id="frmSearch" action="<?php echo site_url('backends/accounts/searchsubmit/')?>" method="post">
            <input type="text" id="searchInput" name="q" class="text" value="Search" />
        </form>
    </div>

    <div class="block_content">

        <table cellpadding="0" cellspacing="0" width="100%" class="sortable">

            <thead>
                <tr>
                    <th>Avatar</th>
                    <th>Data</th>
                    <th>Status</th>
                    <th>Last Login</th>
                    <td>&nbsp;</td>
                </tr>
            </thead>


            <tbody>
                <?php foreach ($users['data'] as $r): ?>
                    <tr id="row-data-<?php echo $r->id ?>" <?php echo is_row_admin($r->group_id) ?>>
                        <td>
                            <img src="<?php echo $r->avatar ?>" />
                        </td>
                        <td>
                            <div><?php echo $r->fullname ?></div>
                            <div><?php echo $r->email ?></div>
                            <div>
                                Facebook : <strong><?php echo status_connected($r->fb_id); ?></strong> |
                                Twitter : <strong><?php echo status_connected($r->twitter_id); ?></strong>
                            </div>
                        </td>
                        <td><?php echo status($r->active) ?></td>
                        <td><?php echo date('d/m/Y H:i', $r->last_login) ?></td>
                        <td class="delete">
                            <a rel="" class="buttonUI" href="<?php echo site_url('/article/backends/edit/' . $r->id) ?>">edit</a>
                        <?php $text = $r->active ? 'deactivate' : 'activate'; ?>
                        <a id="activate-button-<?php echo $r->id ?>" rel="<?php echo $text ?>" class="buttonUI activate" href="<?php echo site_url('/backends/accounts/' . $text . '/' . $r->id) ?>"><?php echo $text ?></a>
                    </td>
                </tr>
                <?php endforeach; ?>

                    </tbody>

                </table>
                <div class="pagination right">
            <?php echo $pagination; ?>
        </div>

    </div>

    <div class="bendl"></div>
    <div class="bendr"></div>
</div>
<!-- /pages -->