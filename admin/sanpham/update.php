<?php
   if(is_array($sanpham)){
       // tạo biến name, id moi gan lai gia tri = gia tri cu
       $sanpham['fullname'] = $sanpham['name'];
       $sanpham['idsp'] = $sanpham['id'];
     extract($sanpham);
   }

   $hinhpath = '../upload/' .$img;
   if(is_file($hinhpath)){
       $hinh = " <img src ='".$hinhpath."' height = '80'>";
   }else{
       $hinh = "Không có img !"; 
   }

?>


<div class="row">
            <div class="row frmtitle">
                <h1>Cập nhật loại hàng hóa</h1>
            </div>
        </div>
        <div class="row frmcontent">
        <form action="index.php?act=updatesp" method="post" enctype="multipart/form-data">
                <div class="row mb10">
                    <select name="iddm">
                        <option value="0" selected>Tất cả  </option>
                        
                        <?php
                            foreach ($listdanhmuc as $danhmuc) {
                               extract($danhmuc);
                               if($iddm == $id)   $s="selected"; else $s="";
                               echo "<option value='" . $id . "' " . $s . ">" . $name . "</option>";
                            }

                        ?>
                        <?php  var_dump($name);  ?> 
                    </select>
                </div>
                <div class="row mb10">
                     Tên sản phẩm <br>
                     <!--name trung ten bien vs danh muc -->
                    <input type="text" name="tensp" value="<?=$fullname?>" > 
                    <?php  var_dump($name);  ?>                    
                </div>
                <div class="row mb10">
                     Giá  <br>
                    <input type="text" name="giasp" value="<?=$price?>" >
                </div>
                <div class="row mb10">
                     Hình <br>
                    <input type="file" name="hinh">
                    <?=$hinh?>
                </div>
                <div class="row mb10">
                    Mô tả <br>
                   <textarea name="mota" cols="30" rows="10" ><?=$mota?></textarea>
                </div>
                <div class="row mb10">
                    <!-- id trung vs id cua danh muc -->
                    <input type="hidden" name="id" value="<?=$idsp?>">
                    <input type="submit" name="capnhat" value="Cập nhật">
                    <input type="reset" value="Nhập lại">
                    <a href="index.php?act=lissp"><input type="button" value="Danh sách"></a>
                </div>

                <?php
                  if (isset($thongbao)&&($thongbao!="")) 
                      echo $thongbao;
                  
                ?>
                
        </form>

        </div>