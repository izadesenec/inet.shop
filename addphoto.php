<?php
header('Content-type:application/json');
include_once 'PhotoUpload.php';
$pu = new PhotoUpload();
if ($pu->validate()) {
    $pu->upload();
    $pu->addToDb();
    $goods=array(
        'errors'=>array(
            'error'=>0),
        'items'=>  get_goods()
    );
    echo json_encode($goods);
}else{
    $goods=array(
        'errors'=>$pu->errors(),
        'items'=>  get_goods()
        
    );
    echo json_encode($goods);
}

function get_goods() {
    $querry = "SELECT * FROM goods";
    $goods = array();
    $dbh = new PDO('mysql:host=localhost;dbname=inet_shop', 'root', '');
    foreach ($dbh->query($querry)as $row) {
        $goods[] = array(
            'id' => $row['id'],
            'name' => $row['name'],
            'price' => $row['price'],
            'src' => $row['photo']);
    }
    return $goods;
}
//get_goods();
//$querry = "SELECT * FROM images";
//$images = array();
//$dbh = new PDO('mysql:host=localhost;dbname=gallery', 'root', '');
//foreach ($dbh->query($querry)as $row) {
//    $images[] = array(
//        'id' => $row['id'],
//        'src' => $row['src']);
//}
//
//echo json_encode($images);
////get_photo();