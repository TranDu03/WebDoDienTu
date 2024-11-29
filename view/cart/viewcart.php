    <div class="row mb ">
            <div class="boxtrai mr giohang">
                <div class="row mb">
                    <div class="boxtitle"> GIỎ HÀNG  </div>
                    <div class="row boxcontent vienbang">
                    <table>
                      <?php
                          viewcart(1);
                      ?> 
                   </table>   
                   <div class="nut">
                       <a href="index.php?act=bill"><input  type="submit" value="Tiếp tục đặt hàng"></a>           
                       <a href="index.php?act=delcart"><input type="button" value="Xoá giỏ hàng"></a>
                   </div>              
                </div>
                </div>           
            </div>

  
         
            <div class="boxphai">
                  <?php
                     include "view/boxright.php";
                  ?>   
            </div>

        </div>






















