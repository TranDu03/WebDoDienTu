<?php
   if(is_array($dm)){
     extract($dm);  
   }

?>


<div class="row">
            <div class="row frmtitle">
                <h1>Cập nhật loại hàng hóa</h1>
            </div>
        </div>
        <div class="row frmcontent">
             <form action="index.php?act=updatedm" method="post">
                <div class="row mb10">
                    Mã loại <br>
                    <input type="text" name="maloai" >
                </div>
                <div class="row mb10">
                    Tên loại <br>
                    <input type="text" name="tenloai" value="<?php if(isset($name)&&($name!="")) echo $name;?>">
                </div>
                <div class="row mb10">
                    <input type="hidden" name="id" value="<?php if(isset($id)&&($id>0)) echo $id ;?>">
                    <input type="submit" name="capnhat" value="Cập nhật">
                    <input type="reset" value="Nhập lại">
                    <a href="index.php?act=lisdm"><input type="button" value="Danh sách"></a>
                </div>

                <?php
                  if (isset($thongbao)&&($thongbao!="")) 
                      echo $thongbao;
                  
                ?>
                
             </form>
        </div>