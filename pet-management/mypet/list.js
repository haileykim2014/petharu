//등록하기
  function addPopup(){
    console.log("addPopup");
    document.getElementById("popup-3").classList.toggle("active");

  }
//상세보기
  function togglePopup(){
    console.log("profile");
    document.getElementById("popup-1").classList.toggle("active");
  }
//수정하기  
  function updatePopup(){
    console.log("update");
    document.getElementById("popup-2").classList.toggle("active");
    document.getElementById("popup-1").classList.remove("active");
  }
//삭제확인팝업
  function confirmPopup(e){
    console.log("confirmPopup");
    document.getElementById("popup-4").classList.toggle("active");
    if(e.target.contains("cancel"))
    document.getElementById("popup-4").classList.remove("active");
  }
  //삭제결과팝업
  function resultPopup(){
    console.log("resultPopup");
    document.getElementById("popup-1").classList.remove("active");
    document.getElementById("popup-4").classList.remove("active");
    document.getElementById("popup-5").classList.toggle("active");
  }



  window.addEventListener("load",function(){

    /*---------------반려 동물 삭제---------------------*/
    var deleteButton = document.querySelector(".delete");
    var cancel = document.querySelector(".cancel");
    
    // deleteButton.onclick = function(e){
    //   var target = e.target;
    //   console.log("삭제버튼눌림");
    //   //삭제여부묻기
    //   document.getElementById("popup-4").classList.toggle("active");
    //   console.log(target);
    // }
    // cancel.onclick =function(e){
    //   console.log("취소버튼눌림");
    //   document.getElementById("popup-4").classList.toggle("active");
    // }

    
     /*-------------------사진업로드----------------------*/
     var fileButton = document.querySelector(".file-button"); //가 실행
     var fileTriggetButton = document.querySelector(".file-trigger-button");//가 클릭되지만
     console.log(fileTriggetButton);
   
     fileTriggetButton.onclick =function(){
      console.log("upload");
         var event = new MouseEvent("click",{
             'view':window,
             'bubbles':true,
             'cancelable':true
         });
         fileButton.dispatchEvent(event);//이벤트전달
     };
     //수정에서 upload 동작 okay
     //추가에서 upload 선택안됨

})
