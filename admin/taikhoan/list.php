
<div class="row">
            <div class="row frmtitle">
                <h1>DANH SÁCH TÀI KHOẢN </h1>
            </div>
            
            <div class="row frmcontennt">
                <!-- <form action="#" method="post"> -->
                    <div class="row mb10 frmdsloai">
                     <table>
                        <tr>
                            <th></th>
                            <th>MÃ TÀI KHOẢN</th>  
                            <th>TÊN DĂNG NHẬP</th>
                            <th>MẬT KHẤU</th>
                            <th>EMAIL</th>
                            <th>ĐỊA CHỈ</th>
                            <th>ĐIỆN THOẠI</th>
                            <th>VAI TRÒ</th>
                            <th></th>
                            <!-- thẻ th để nội dung đc in đậm  -->
                        </tr>

                        <?php
                            //  nó sẽ lặp qua từng phần tử trong mảng $listdanhmuc và gán giá trị của từng
                            // phần tử cho biến $danhmuc, sau đó thực hiện các lệnh trong khối lặp.
                            foreach ($listtaikhoan as $taikhoan){
                                extract($taikhoan); //  Lấy trực tiếp tên biến rồi show ra

                                $suatk = "index.php?act=suatk&id=".$id;
                                $xoatk = "index.php?act=xoatk&id=".$id;
                                echo '
                                <tr>
                                    <td><input type="checkbox" name="" id=""></td>
                                    <td>'.$id.'</td>
                                    <td>'.$user.'</td>  
                                    <td>'.$pass.'</td>  
                                    <td>'.$email.'</td>  
                                    <td>'.$address.'</td>  
                                    <td>'.$tel.'</td>  
                                    <td>';
                                    
                                    if ($role == 0) {
                                      echo 'User';
                                    } elseif ($role == 1) {
                                      echo 'Admin';
                                    }
                                
                                    echo '</td>  

                                    <td>
                                       <div class="mauxanh">
                                          <a href="'.$suatk.'"><input type="button" value="Sữa"></a>
                                       </div>
                                       <div class="maudo">
                                          <a href="'.$xoatk.'"><input type="button" value="Xóa"></a>                                   
                                        </div>                                     
                                    </td>


                                </tr>
                                ';
                                

                                
                            }

                        ?>


                     </table>
                    </div>
                    <div class="row mb10">
                     
                    </div>
                    <div class="row mb10">
                        <input type="button" value="Chọn tất cả">
                        <input type="button" value="Bỏ chọn tất cả">
                        <input type="button" value="Xóa tất cả các mục đã chọn">
                        <a href="index.php?act=adddm"><input type="button" value="Nhập thêm mới"></a>
                    </div>
                
            </div>


        </div>

