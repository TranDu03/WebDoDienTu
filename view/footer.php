<div class="row mb footer">
   <center>
      Địa Chỉ: 459 Tôn Đức Thắng, P.Hòa Khánh Nam, Q.Liên Chiểu, TP.Đà Nẵng <br>

                         Email: tcdu2003@gmail.com <br>

                         Số Điện Thoại: 0985527084 <br>

                      Rất Mong Được Phục Vụ Quý Khách<br>
            
                
                    <a href="#"><img src="https://img.icons8.com/fluent/50/000000/facebook-new.png"/></a>
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/instagram-new.png"/></a>
                    <a href="#"><img src="https://img.icons8.com/fluent/48/000000/twitter.png"/></a>
                
       </div>
  
   </center>
           
        </div>

    </div>


    <script>
       let slideIndex = 0;
       showSlides();
       
       function showSlides() {
         let i;
         let slides = document.getElementsByClassName("mySlides");
         for (i = 0; i < slides.length; i++) {
           slides[i].style.display = "none";
         }
         slideIndex++;
         if (slideIndex > slides.length) {slideIndex = 1}
         slides[slideIndex-1].style.display = "block";
         setTimeout(showSlides, 2000); // Change image every 2 seconds
       }
     </script>
</body>
</html>