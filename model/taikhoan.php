<?php
    function loadall_taikhoan(){  //load lên tất cả
        $sql = "select * from taikhoan order by id desc";
        $listtaikhoan = pdo_query($sql);
        return $listtaikhoan;
    }
    

    function insert_taikhoan($email, $user, $pass, $address,$tel){
        $sql = "insert into taikhoan(email, user, pass, address,tel) values('$email','$user','$pass','$address','$tel')";
        pdo_execute($sql);  
    }
    
    function checkuser($user, $pass) {  //load lên một danh mục
        $sql = "select * from taikhoan where user= '".$user."' AND  pass= '".$pass."'";
        $sp = pdo_query_one($sql);
        return $sp;
    }

    function checkemail($email) {  //load lên một danh mục
        $sql = "select * from taikhoan where email= '".$email."' ";
        $sp = pdo_query_one($sql);
        return $sp;
    }

    function  update_taikhoan($id, $user, $pass, $email, $address, $tel){

        $sql = "update taikhoan set user= '".$user."', pass= '".$pass."', email= '".$email."', address= '".$address."', tel= '".$tel."' where id=".$id;
        pdo_execute($sql); 
       
    }

    function delete_tk($id){
        $sql = "delete from taikhoan where id=" .$id;
        pdo_execute($sql); 
    }   
    
?>
