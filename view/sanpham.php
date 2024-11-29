<div class="row mb ">
            <div class="boxtrai mr">
                <div class="row mb">
                    <div class="boxtitle"> SẢN PHẨM <strong><?=$tendm?></strong> </div>
                    <div class="row boxcontent">
                       <?php
                        $i = 0;                        
                        foreach ($dssp as $sp) {
                            extract ($sp);
                            
                            $linksp = "index.php?act=sanphamct&idsp=".$id;
                            $hinh = $img_path.$img;
                            if (($i==2)||($i==5)||($i==8)||($i==11)) {
                                $mr = "";
                            }else{
                                $mr = "mr";
                            }
                            echo '
                                    <div class="boxsp '.$mr.'">
                                       <a href="'.$linksp.'">
                                        <div class="row img">
                                           <img src="'.$hinh.'" alt="">
                                        </div>                                           
                                       </a>
                                         
                                        <p>$'.$price.'</p>
                                        <a href="'.$linksp.'">'.$name.'</a>
                                        <div class="mt">
                                            
                                            <form action="index.php?act=addtocart" method="post">
                                                <input type="hidden" name="id" value="'.$id.'">
                                                <input type="hidden" name="name" value="'.$name.'">
                                                <input type="hidden" name="img" value="'.$img.'">
                                                <input type="hidden" name="price" value="'.$price.'">
                                                
                                                <button type="submit" name="addtocart" value="Thêm vào giỏ hàng !"> Thêm vào giỏ hàng <i class="bx bxs-cart-add"></i>  </button>
                                            </form>
                                            </div>
                                    </div>
                            ';
                            $i +=1;
                            
                        };
                        
                       ?>
                    </div>
                </div>           
            </div>

  
         
            <div class="boxphai">
                  <?php
                     include "boxright.php";
                  ?>   
            </div>

        </div>