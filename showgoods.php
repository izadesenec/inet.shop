<?php
header('Content-type:application/json');
function show_goods() {
    $num=$_POST['num'];
    
//    $num2=$_GET['num'];
//    $result=array();
//    if(empty($num2)){
//        $result[]=array('GET'=>'empty value v GET');
//    }else{
//        $result[]=array('GET'=>$num2);
//    }
//    if (empty($num)){
//       $result[]=array('POST'=>'empty value v POST'); 
//    }else{
//        $result[]=array('POST'=>$num);
//    }
//return $result;    
//echo json_encode(show_goods());

    
    $querry = "SELECT * FROM goods LIMIT {$num}, 10";
    $goods = array();
    $dbh = new PDO('mysql:host=localhost;dbname=inet_shop', 'root', '');
    //echo $dbh->query($querry)->rowCount();
    if($dbh->query($querry)->rowCount()>0){
    foreach ($dbh->query($querry)as $row) {
        $goods[] = array(
            'id' => $row['id'],
            'name' => $row['name'],
            'price' => $row['price'],
            'description'=>$row['description'],
            'src' => $row['photo']);
    }
    
    return $goods;
}else {
    return 0;
}
}
$info=array(
        'errors'=>array(
            'error'=>0),
        'items'=> show_goods()
    );
echo json_encode($info);


