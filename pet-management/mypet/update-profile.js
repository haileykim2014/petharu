// window.addEventListener("load",function(){
//     var button = document.querySelector(".button");

//     button.onclick = function(){
//         alert("반려동물의 정보가 수정되었습니다.")
//     }
// })

window.addEventListener("load",function(){
function setThumbnail(event) {
     var reader = new FileReader();
      reader.onload = function(event) {
      var img = document.createElement("img");
      img.setAttribute("src", event.target.result);
      document.querySelector("div#image_container").appendChild(img);
      };
      reader.readAsDataURL(event.target.files[0]);
      }
    })