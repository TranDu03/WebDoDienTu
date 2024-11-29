<?php
    function insert_binhluan($noidung, $iduser, $idpro, $ngaybinhluan){
    $sql = "insert into binhluan(noidung, iduser, idpro, ngaybinhluan ) values('$noidung', '$iduser', '$idpro', '$ngaybinhluan')";
    pdo_execute($sql);  

    }

    function loadall_binhluan($idpro){  //load lên tất cả
        $sql = "select * from binhluan where 1";
        if ($idpro>0) $sql.= " AND idpro='".$idpro."'";
        $sql.= " order by id desc";
        $listbl = pdo_query($sql);
        return $listbl;
    }

    // function loadall_binhluan($idpro) {
    //     $sql = "select * from binhluan where idpro = '" . $idpro . "'";
    
    //     // Thêm điều kiện WHERE nếu $idpro lớn hơn 0
    //     if ($idpro > 0) {
    //         $sql .= " AND idpro = '" . $idpro . "'";
    //     }
    
    //     // Sử dụng ORDER BY chỉ một lần
    //     $sql .= " order by id desc";
    
    //     $listbl = pdo_query($sql);
    //     return $listbl;
    // }
    
    
    function delete_binhluan($id){
        $sql = "delete from binhluan where id=" .$id;
        pdo_execute($sql); 
    }   
    






?>