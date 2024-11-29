<div class="row mb ">
            <div class="boxtrai mr">
                <div class="row mb">
                    <div class="boxtitle"> ĐĂNG KÍ THÀNH VIÊN </div>
                    <div class="row boxcontent formtaikhoan">
                        <form action="index.php?act=dangky" method="post">
                            <div class="row mb10">
                                Email
                                <input type="email" name="email" >
                            </div>
                            <div class="row mb10">
                                Địa chỉ
                                <input type="text" name="address" >
                            </div>
                            <div class="row mb10">
                                Sdt
                                <input type="text" name="tel" >
                            </div>
                            <div class="row mb10">
                                Tên đăng nhập
                                 <input type="text" name="user">
                            </div>
                            <div class="row mb10">
                                Mật khấu 
                                  <input type="password" name="pass">
                            </div>
                         
                            <div class="row mb10">
                                 <input type="submit" value="Đăng kí" name="dangky">
                                 <input type="reset" value="Nhập lại">
                            </div>             
                        </form>

                        <h1 class="thongbao">
                             <?php
                                 if(isset($thongbao)&&($thongbao!="")){
                                     echo $thongbao;
                                 }           
                             ?>                            
                        </h1>

                    </div>  
                </div>             
            </div>
  



            <div class="boxphai">
                  <?php
                     include "view/boxright.php";
                  ?>   
            </div>

        </div>