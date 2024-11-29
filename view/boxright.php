<div class="row mb">
                    <div class="boxtitle"> TÀI KHOẢN </div>
                    <div class="boxcontent formtaikhoan">
                        <?php
                            if (isset($_SESSION['user'])) {
                             extract ($_SESSION['user']);
                            
                        ?>

                            <div class="row mb10">
                                <div class="xinchao"> Xin chào !</div>
                                    
                                <div class="xinchao"> >> <?=$user?> << </div>
                                
                               <br>

                            </div>
                            <div class="row mb10 danhmuc">
                                 <li>
                                     <a href="index.php?act=mybill">Đơn hàng của tôi </a>
                                 </li>
                                 <li>
                                     <a href="index.php?act=quenmk">Quên mật khấu</a>
                                 </li>
                                 <li>
                                     <a href="index.php?act=edit_taikhoan">Cập nhật tài khoản !</a>
                                 </li>
                                 <?php
                                    if ($role == 1) {                                  
                                 ?>
                                 <li>
                                     <a href="admin/index.php?act=lisdm">Đăng nhập admin</a>
                                 </li>                                
                                 <?php } ?>
                                 <li>
                                     <a href="index.php?act=thoat">Thoát</a>
                                 </li>
                            
                            </div>

                       <?php
                           }else{
                        ?>
                        <form action="index.php?act=dangnhap" method="post">
                            <div class="row mb10">
                                Tên đăng nhập <br>
                               <input type="text" name="user" > 
                            </div>

                            <div class="row mb10">
                                Mật khấu <br>
                                <input type="password" name="pass" >
                            </div>
                            
                            <div class="row mb10">
                               <input type="checkbox" name="" id=""> Ghi nhớ tài khoản <br>
                            </div>
                             
                            <div class="row mb10">
                               <input type="submit" value="Đăng nhập" name="dangnhap">
                           </div>
                        </form>

                        <li>
                         <a href="#">Quên mật khấu</a>
                        </li>
                        <li>
                         <a href="index.php?act=dangky">Đăng kí tài khoản</a>
                        </li>




                         <?php }?>
                    </div>
                </div>









                <div class="row mb">
                    <div class="boxtitle"> DANH MỤC</div>
                    <div class="boxcontent2 menudoc">
                        <ul>
                            <?php
                               foreach ($dsdm as $dm) {
                                  extract ($dm);
                                  $linkdm = "index.php?act=sanpham&iddm=".$id;

                                  echo '
                                  <li>
                                      <a href="'.$linkdm.'">'.$name.'</a>
                                  </li> 
                                  ';
                               }
                            
                            ?>

                            <!-- <li>
                                <a href="#">Đồng hồ</a>
                            </li>
                            <li>
                                <a href="#">Đồng hồ</a>
                            </li>
                            <li>
                                <a href="#">Đồng hồ</a>
                            </li>
                            <li>
                                <a href="#">Đồng hồ</a>
                            </li>
                            <li>
                                <a href="#">Đồng hồ</a>
                            </li>
                            <li>
                                <a href="#">Đồng hồ</a>
                            </li>
                            <li>
                                <a href="#">Đồng hồ</a>
                            </li> -->
                        </ul>



                    </div>
                    
                    <div class="boxfooter searbox">
                        <form action="index.php?act=sanpham" method="post">
                            <input type="text"  name="kyw" id="">
                            <input type="submit" name="timkiem" value="Tìm kiếm">
                        </form>
                    </div>


                </div>
                <div class="row">
                    <div class="boxtitle"> TOP 10 YÊU THÍCH</div>
                    <div class="row boxcontent">
                        <?php
                          foreach ($dstop10 as $sp) {
                            extract ($sp);
                            $linksp = "index.php?act=sanphamct&idsp=".$id;
                            $img = $img_path.$img;
                            echo '

                            
                            <div class="row mb10 top10">
                               <a href="'.$linksp.'"> <img src="'.$img.'" alt=""> </a>
                            
                               <a href="'.$linksp.'">'.$name.'</a>
                            </div>                          
                            ';
                            

                          }                       
                        ?>
                        


                        <!-- <div class="row mb10 top10">
                            <img src="view/images/img1.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="view/images/img2.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="view/images/img3.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="view/images/img4.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>                        <div class="row mb10 top10">
                            <img src="view/images/img1.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="view/images/img2.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="view/images/img3.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>
                        <div class="row mb10 top10">
                            <img src="view/images/img4.webp" alt="">
                            <a href="#">Sir rotney's Marmalade</a>
                        </div>                        -->
                    </div>
                </div>   