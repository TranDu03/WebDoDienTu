
<div class="row">
            <div class="row frmtitle">
                <h1>THỐNG KÊ SẢN PHẢM THEO LOẠI</h1>
            </div>
            
            <div class="row frmcontennt">
                    <div class="row mb10 frmdsloai">
                     <table>
                        <tr>
                            <th>MÃ DANH MỤC</th>
                            <th>TÊN DANH MỤC</th>  
                            <th>SỐ LƯỢNG</th>
                            <th>GIÁ CAO NHẤT</th>
                            <th>GIÁ THẤP NHẤT</th>
                            <th>GIÁ TRUNG BÌNH</th>
                            <!-- thẻ th để nội dung đc in đậm  -->
                        </tr>

                        <?php
                            //  nó sẽ lặp qua từng phần tử trong mảng $listdanhmuc và gán giá trị của từng
                            // phần tử cho biến $danhmuc, sau đó thực hiện các lệnh trong khối lặp.
                            foreach ($listthongke as  $thongke){
                                extract($thongke); //  Lấy trực tiếp tên biến rồi show ra
                                echo '
                                    <tr>
                                        <td>'.$madm.'</td>
                                        <td>'.$tendm.'</td>
                                        <td>'.$countsp.'</td>
                                        <td>'.$maxprice.'</td>
                                        <td>'.$minprice.'</td>
                                        <td>'.$avgprice.'</td>
                                    </tr>
                                ';
                            }

                        ?>


                     </table>
                    </div>
                    <div class="row mb10">

                    

                        <a href="index.php?act=bieudo"><input type="button" value="Xem biểu đồ"></a>
                    </div>
                
            </div>



            
        </div>
