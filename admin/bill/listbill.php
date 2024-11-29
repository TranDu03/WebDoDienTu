
<div class="row">
            <div class="row frmtitle mb">
                <h1>Danh sách loại hàng</h1>
            </div>
            
            <form  action="index.php?act=listbill" method="post" >
                  <input type="text" name="kyw" id="" placeholder="Nhập mã đơn hàng của bạn">
                  <button type="submit" name="listok" value="Search"><i class='bx bx-search-alt-2'></i></button>
             </form>      
            <div class="row frmcontennt">
            
              <div class="row mb10 frmdsloai">
                    <table>
                                <tr>
                                   <th></th>
                                   <th>MÃ ĐƠN HÀNG</th>  
                                   <th>KHÁCH HÀNG</th>
                                   <th>SỐ LƯỢNG HÀNG</th>
                                   <th>GIÁ TRỊ ĐƠN HÀNG</th>
                                   <th>TÌNH TRẠNG ĐƠN HÀNG</th>
                                   <th>NGÀY ĐẶT HÀNG</th>
                                   <th>THAO TÁC</th>
                                   
                               </tr>
            
                               <?php
                                   foreach ($listbill as $bill){
                                    extract($bill); 
                                    $kh = $bill["bill_name"].'
                                    <br>'.$bill["bill_email"].'
                                    <br>'.$bill["bill_address"].'
                                    <br>'.$bill["bill_tel"];
                                    $ttdh = get_ttdh($bill["bill_status"]);
                                    $countsp =  loadall_cart_count($bill["id"]);
                                    // $suadm = "index.php?act=suadm&id=".$id;
                                    $xoadh = "index.php?act=xoa_bill&id=".$id;
                                    $suadh = "index.php?act=sua_bill&id=".$id;

                                    echo'
                                       <tr>
                                           <td>    <input type="checkbox" name="" id=""> </td>
                                           <td> PVD-'.$bill['id'].'</td>
                                           <td>'.$kh.'</td>
                                           <td>'.$countsp.'</td>
                                           <td><strong>'.$bill["total"].'</strong></td>
                                           <td>'.$ttdh.'</td>
                                           <td>'.$bill["ngaydathang"].'</td>
                                           <td>

                                              <div class="maudo">
                                                 <a href="'.$xoadh.'"><input type="button" value="Xóa"></a>      
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












