<?php

function status($r, $negasi=0) {
    if ( $negasi ) {
        return $r ? 'draft' : 'publish';
    } else {
        return $r ? 'publish' : 'draft';
    }
}

function create_pagination($segment, $total, $limit, $uri_segment) {
    $CI = & get_instance();
    $CI->load->library('pagination');

    $config['base_url'] = site_url($segment);
    $config['total_rows'] = $total;
    $config['per_page'] = $limit;
    $config['uri_segment'] = $uri_segment;

    $CI->pagination->initialize($config);

    return $CI->pagination->create_links();
}

function xdebug($v) {
    echo '<pre>' . print_r($v, true) . '</pre>';
}

function status_connected($var) {
    return $var ? 'connected' : 'not connected';
}

function is_row_admin($group_id) {
    if ( $group_id === '1' ) {
        return 'style="background-color:#eee;"';
    } else {
        return '';
    }
}

function get_breadcrumbs($breadcrumbs=array()) {
    return '<p class="breadcrumb">' . implode(" » ", $breadcrumbs) . '</p>';
}

function extract_date($date) {
    $date = substr($date, 0, 10);
    $dates = explode('-', $date);
    $y = $dates[0];
    $m = $dates[1];
    $d = $dates[2];

    return date('d F Y', mktime(0, 0, 0, $m, $d, $y));
}

function src_thumb($file, $w=60, $h=60) {
    $img = base_url() . "libs/phpThumb/phpThumb.php?src=../../uploads/articles/thumbs/" . $file . "&w=" . $w . "&h=" . $h;
    return $img;
}

function array_paging($array = array(), $per=10) {
    $total = count($array);
    $total_page = ceil($total / $per);
    $results = array();
    for ($i = 0; $i < $total_page; $i++) {
        $offset = $i * $per;
        $t = array_slice($array, $offset, $per);
        $results[] = $t;
    }
    return $results;
}

function get_discography() {
    $album = array();
    $file = './discography.csv';
    if ( ($handle = fopen($file, "r")) !== FALSE ) {
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $album[$data[0]][$data[1]] = $data;
        }
        fclose($handle);
    }
    return $album;
}