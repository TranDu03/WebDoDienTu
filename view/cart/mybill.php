
    <div class="row phuongthuc-dh mb">
              <div class="boxtitle"> THÔNG TIN ĐẶT HÀNG  </div>
              <div class="vienbang">
                <table>
                    <tr>
                        <th>Mã đơn hàng</th>
                        <th>Ngày đặt</th>
                        <th>Số lượng mặt hàng</th>
                        <th>Tống giá trị đơn hàng</th>
                        <th>Tình trạng đơn hàng</th>
                    </tr>
    
                    <?php
                        if(is_array($listbill)){
                            foreach ( $listbill as $bill) {
                                extract ($bill);
                                $ttdh = get_ttdh($bill['bill_status']);
                                $countsp = loadall_cart_count($bill['id']);
                                echo'
                                   <tr>
                                      <td>PVD-'.$bill['id'].'</td>
                                      <td>'.$bill['ngaydathang'].'</td>
                                      <td>'.$countsp.'</td>
                                      <td>$'.$bill['total'].' </td>
                                      <td>'.$ttdh.'</td>
                                   </tr>
                                
                                ';
    
                            }
                        }
                    ?>
    
                </table>
            </div>
    
    
            
    </div>






















