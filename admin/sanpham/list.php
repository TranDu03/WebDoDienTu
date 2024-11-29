
        <div class="row">
            <div class="row frmtitle mb">
                <h1>Danh sách loại hàng</h1>
            </div>
            
            <form class="mb" action="index.php?act=lissp" method="post" >
                <input type="text" name="kyw" id="">
                <select name="iddm">
                    <option value="0" selected>Tất cả</option>
                   <?php
                        foreach ($listdanhmuc as $danhmuc) {
                            extract($danhmuc);
                            echo "<option value='" . $id . "'>" . $name . "</option>";
                        }
                    ?>
                </select>
                <input type="submit" name="listok" value="Search">
                
            </form>
            <div class="row frmcontennt">
                
                    <div class="row mb10 frmdsloai">
                     <table>
                         <tr>
                            <th></th>
                            <th>MÃ LOẠI</th>  
                            <th>Tên sản phẩm</th>
                            <th>HÌNH</th>
                            <th>GIÁ</th>
                            <th>LƯỢT XEM</th>
                            <th></th>
                            
                            <!-- thẻ th để nội dung đc in đậm  -->
                        </tr>

                        <?php
                            //  nó sẽ lặp qua từng phần tử trong mảng $listdanhmuc và gán giá trị của từng
                            // phần tử cho biến $danhmuc, sau đó thực hiện các lệnh trong khối lặp.
                            foreach ($listsanpham as $sanpham){
                                extract($sanpham); //  Lấy trực tiếp tên biến rồi show ra
                                $suasp = "index.php?act=suasp&id=".$id;
                                $xoasp = "index.php?act=xoasp&id=".$id;
                                $hinhpath = '../upload/' .$img;
                                if(is_file($hinhpath)){
                                    $hinh = " <img src ='".$hinhpath."' height = '80'>";
                                }else{
                                    $hinh = "Không có img !"; 
                                }
                                   
                                


                                echo '
                                    <tr>
                                        <td><input type="checkbox" name="" id=""></td>
                                        <td>'.$id.'</td>
                                        <td>'.$name.'</td>  
                                        <td>'.$hinh .'</td>  
                                        <td>'.$price.'</td>  
                                        <td>'.$luotxem.'</td>  

                                        <td>


                                            <div class="mauxanh">
                                                 <a href="'.$suasp.'"><input type="button" value="Sữa"></a>
                                            </div>
                                            <div class="maudo">
                                                 <a href="'.$xoasp.'"><input type="button" value="Xóa"></a>                                       
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
                        <a href="index.php?act=addsp"><input type="button" value="Nhập thêm mới"></a>
                    </div>
                
            </div>


        </div>