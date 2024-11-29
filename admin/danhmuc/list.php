
        <div class="row">
            <div class="row frmtitle">
                <h1>Danh sách loại hàng</h1>
            </div>
            
            <div class="row frmcontennt">
                <!-- <form action="#" method="post"> -->
                    <div class="row mb10 frmdsloai">
                     <table>
                        <tr>
                            <th></th>
                            <th>Mã loại</th>  
                            <th>Tên loại</th>
                            <th></th>
                            <!-- thẻ th để nội dung đc in đậm  -->
                        </tr>

                        <?php
                            //  nó sẽ lặp qua từng phần tử trong mảng $listdanhmuc và gán giá trị của từng
                            // phần tử cho biến $danhmuc, sau đó thực hiện các lệnh trong khối lặp.
                            foreach ($listdanhmuc as $danhmuc){
                                extract($danhmuc); //  Lấy trực tiếp tên biến rồi show ra

                                $suadm = "index.php?act=suadm&id=".$id;
                                $xoadm = "index.php?act=xoadm&id=".$id;

                                echo '
                                    <tr>
                                        <td><input type="checkbox" name="" id=""></td>
                                        <td>'.$id.'</td>
                                        <td>'.$name.'</td>  
                                        <td>
                                        <div class="mauxanh">
                                         <a href="'.$suadm.'"><input type="button" value="Sữa"></a>
                                        </div>
                                        <div class="maudo">
                                        <a href="'.$xoadm.'"><input type="button" value="Xóa"></a>
                                         
                                        </div>                                       
                                            
                                        </td>
                                    </tr>
                                ';

                                
                            }

                        ?>
                      <div class="mauxanh"></div>

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
