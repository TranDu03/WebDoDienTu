<?php
function insert_sanpham($tensp, $giasp, $hinh, $mota, $iddm){
    $sql = "insert into sanpham(name, price, img, mota, iddm) values('$tensp','$giasp','$hinh','$mota','$iddm')";
    pdo_execute($sql);  
}

function delete_sanpham($id){
    $sql = "delete from sanpham where id=" .$id;
    pdo_execute($sql); 
}   

function loadall_sanpham_top10(){  //load lên tất cả
    $sql = "select * from sanpham  where 1 order by luotxem desc limit 0,10"; //limit 0,10: Đây là mệnh đề giới hạn kết quả. Nói cho hệ quản trị cơ sở dữ liệu biết bạn muốn lấy tối đa 10 bản ghi từ kết quả truy vấn, bắt đầu từ vị trí thứ 0. Trong trường hợp này, nó sẽ trả về 10 bản ghi đầu tiên của kết quả, dựa trên sắp xếp theo cột "luotxem" đã được thực hiện ở bước trước.
    
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadall_sanpham_home(){  //load lên tất cả
    $sql = "select * from sanpham  where 1 order by id desc limit 0,24";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadall_sanpham($kyw="", $iddm=0){  //load lên tất cả
    $sql = "select * from sanpham  where 1";
    if ($kyw!="") {
         $sql.= " and name like '%" .$kyw. "%'";
    }
    if ($iddm > 0) {
        $sql.= " and iddm   = '" .$iddm. "' ";
   }
    $sql.= " order by id desc";// nối chuối 
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadone_sanpham($id){  //load lên một danh mục
    $sql = "select * from sanpham where id=" .$id;
    $sp = pdo_query_one($sql);
    return $sp;
}

function load_ten_dm($iddm){
    if($iddm>0){
        $sql="select * from danhmuc where id=".$iddm;
        $dm=pdo_query_one($sql);
        extract($dm);
        return $name;
    }else{
        return "";
    }
}

// function load_ten_dm($iddm) {
//     if ($iddm > 0) {
//         $sql = "select * from danhmuc where id=" . $iddm;
//         $dm = pdo_query_one($sql);
//         if (is_array($dm) && isset($dm['name'])) {
//             extract($dm);
//             return $name;
//         } else {
//             return "";
//         }
//     } else {
//         return "";
//     }
// }



function load_sanpham_cungloai($id, $iddm){  //load lên sản phẩm cùng loại
    $sql = "select * from sanpham where iddm = ".$iddm." AND id <>" .$id;
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

// function loadone_sanpham($id){  //load lên một danh mục
//     $sql = "select * from sanpham where id=" .$id;
//     $dm = pdo_query_one($sql);
//     return $dm;
// }

function   update_sanpham($id,$iddm, $tensp, $giasp, $mota, $hinh){
    if ($hinh!="") {
        $sql = "update sanpham set  iddm= '".$iddm."', name= '".$tensp."', price= '".$giasp."', mota= '".$mota."', img='".$hinh."' where id=".$id;
    }else {
        $sql = "update sanpham set  iddm= '".$iddm."', name= '".$tensp."', price= '".$giasp."', mota= '".$mota."' where id=".$id;
    }
    pdo_execute($sql); 
   
}




?>