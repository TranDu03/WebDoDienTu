<div class="row">
            <div class="row frmtitle">
                <h1>Thêm mới loại hàng hóa</h1>
            </div>
        </div>
        <div class="row frmcontent">
             <form action="index.php?act=adddm" method="post"> <!-- xác định nơi lấy dữ liệu của -->
                <div class="row mb10">
                    Mã loại <br>
                    <input type="text" name="maloai" >
                </div>
                <div class="row mb10">
                    Tên loại <br>
                    <input type="text" name="tenloai" >
                </div>
                <div class="row mb10">
                    <input type="submit" name="themmoi" value="Thêm mới">
                    <input type="reset" value="Nhập lại">
                    <a href="index.php?act=lisdm"><input type="button" value="Danh sách"></a>
                </div>

                <?php
                  if (isset($thongbao)&&($thongbao!="")) 
                      echo $thongbao;
                  
                ?>
                
             </form>
        </div>