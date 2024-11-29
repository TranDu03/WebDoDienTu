 
      <div class="row phuongthuc-dh">
          <div class="boxtitle"> CẢM ƠN BẠN ĐÃ ĐẶT HÀNG !  </div>
     
      </div>

      <?php
          if (isset($bill) && (is_array($bill))) {
             extract($bill);
          }
      ?>

      <div class="row phuongthuc-dh">
          <div class="boxtitle"> THÔNG TIN ĐƠN HÀNG  </div>
          
            <div class="content bang">

               <table>
                   <tr>    
                       <td>- Mã đơn hàng:</td>
                       <td> PVD<?=$bill['id'];?> </td>
                   </tr>
                   <tr>
                       <td>- Ngày đặt hàng:</td>
                       <td><?=$bill['ngaydathang'];?></td>
                   </tr>
                   <tr>
                       <td>- Tống đơn hàng: </td>
                       <td><?=$bill['total'];?>$</td>
                   </tr>
                   <tr>
                       <td>- Phương thức thanh toán:</td>
                       <td> Thanh toán khi nhận hàng</td>
                       <!-- $bill['bill_pttt']; -->
                   </tr>
               </table>

            </div>  
      </div>


      <div class="row phuongthuc-dh mb">
          <div class="boxtitle"> CHI TIẾT GIỎ HÀNG  </div>
          <div class="content vienbang">
            <table>
         
                <?php
                  bill_chi_tiet($billct);
                ?>
            </table>

         </div>

         <div class="nut-dh">
            <a href="index.php?act=mybill">
                <input  type="submit" value="Xem đơn hàng của bạn" >
            </a>
        </div>
      </div>











