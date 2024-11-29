<div class="row mb ">
    <form action="index.php?act=billcomfirm" method="post">
        <div class="boxtrai mr">
            <div class="row phuongthuc-dh">
                <div class="boxtitle"> ĐƠN HÀNG  </div>
                <div class="content-dh bang">
                 <table>
                     <?php
                        if (isset($_SESSION['user'])) {
                           $name = $_SESSION['user']['user'];
                           $address = $_SESSION['user']['address'];
                           $email = $_SESSION['user']['email'];
                           $tel = $_SESSION['user']['tel'];
                        }else{
                           $name ="";
                           $address ="";
                           $email ="";
                           $tel ="";
                        }
                     
                     ?>
                     
     
     
     
                     <tr>
                         <td>Người đặt hàng</td>
                         <td><input type="text" name="name" value="<?=$name?>"></td>
                     </tr>
                     <tr>
                         <td>Địa chỉ</td>
                         <td><input type="text" name="address" value="<?=$address?>"></td>
                     </tr>
                     <tr>
                         <td>Email</td>
                         <td><input type="text" name="email" value="<?=$email?>"></td>
                     </tr>
                     <tr>
                         <td>Điện thoại</td>
                         <td><input type="text" name="tel" value="<?=$tel?>"></td>
                     </tr>
                 </table>
                </div>  
            </div>

            <div class="row phuongthuc-dh">
               <div class="boxtitle"> PHƯƠNG THỨC THANH TOÁN  </div>
                    <div class="content-ptdh">
                          <table>
                              <tr>
                                  <td><input type="radio" name="pttt" checked> Trả tiền khi nhận hàng</td>
                                  <td><input type="radio" name="pttt" > Chuyển khoản khi hàng </td>
                                  <td><input type="radio" name="pttt" > Thanh toán khi nhận hàng</td>
                              </tr>
                          </table>    
                    </div>
                </div>
                
                
                
                
                <div class="row mb phuongthuc-dh">
                    <div class="boxtitle"> GIỎ HÀNG CỦA BẠN  </div>

                     <div class="content-ptdh vienbang">
                         <table>
            
                         <?php
                           viewcart(0);
                         ?>
                         </table>
                     </div>
                 

                </div> 


                <div class="nut-dh">
                     <a href="index.php?act=billcomfirm">
                         <input  type="submit" value="Đồng ý đặt hàng" name="dongydathang">
                     </a>
                 </div>



        </div>           


    </form>


  
         
   <div class="boxphai">
         <?php
            include "view/boxright.php";
         ?>   
   </div>

</div>













