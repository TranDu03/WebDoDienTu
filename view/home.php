<div class="row mb ">
            <div class="boxtrai mr">
                    <div class="row">
                        <div class="banner">
                            <!-- Slideshow container -->
                             <div class="slideshow-container">                             
                             <!-- Full-width images with number and caption text -->
                             <div class="mySlides fade">
                               
                               <div class="numbertext">1 / 5</div>
                               <img src="view/images/slider-show/banner-9.webp" style="width:100%">
                               <div class="text">Caption One</div>
                             </div>
                             
                             <div class="mySlides fade">
                               <div class="numbertext">2 / 5</div>
                               <img src="view/images/slider-show/banner-01.webp" style="width:100%">
                               <div class="text">Caption Two</div>
                             </div>
                             
                             <div class="mySlides fade">
                               <div class="numbertext">3 / 5</div>
                               <img src="view/images/slider-show/banner-0.webp" style="width:100%">
                               <div class="text">Caption Three</div>
                             </div>

                             <div class="mySlides fade">
                               <div class="numbertext">4 / 5</div>
                               <img src="view/images/slider-show/banner-03.webp" style="width:100%">
                               <div class="text">Caption Four</div>
                             </div>

                             <div class="mySlides fade">
                               <div class="numbertext">5 / 5</div>
                               <img src="view/images/slider-show/banner-02.webp" style="width:100%">
                               <div class="text">Caption Five</div>
                             </div>
                             
                             <!-- Next and previous buttons -->
                             <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                             <a class="next" onclick="plusSlides(1)">&#10095;</a>
                             </div>
                             <br>
                             
                             <!-- The dots/circles -->
                             <div style="text-align:center">
                             <span class="dot" onclick="currentSlide(1)"></span>
                             <span class="dot" onclick="currentSlide(2)"></span>
                             <span class="dot" onclick="currentSlide(3)"></span>
                             </div>
                        </div>
                    </div>
                    <div class="row">
                        <?php
                            $i = 0;
                            foreach ($spnew as $sp) {
                                extract ($sp);
                                $linksp = "index.php?act=sanphamct&idsp=".$id;
                                $hinh = $img_path.$img;
                                if (($i==2)||($i==5)||($i==8)||($i==11)||($i==14)||($i==17)||($i==20)||($i==23)) {
                                    $mr = "";
                                }else{
                                    $mr = "mr";
                                }
                                echo '
                                    
                                        <div class="boxsp chinhsua '.$mr.'">
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
            <div class="boxphai">
                  <?php
                     include "boxright.php";
                  ?>
            </div>

        </div>