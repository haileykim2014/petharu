function readURL(input) {
    if (input.files && input.files[0]) {
     var reader = new FileReader();
     
     reader.onload = function (e) {
      $('#image_section').attr('src', e.target.result);  
     }
     
     reader.readAsDataURL(input.files[0]);
     }
   }
    
   // 이벤트를 바인딩해서 input에 파일이 올라올때 위의 함수를 this context로 실행합니다.
   $("#imgInput").change(function(){
      readURL(this);
   });