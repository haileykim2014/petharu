window.addEventListener("load",function(){
    var button = document.querySelector(".button");

    button.onclick = function(){
        alert("반려동물이 추가되었습니다.")
    }


    var section = document.querySelector(".img-box");
    console.log(section);
    var fileButton = section.querySelector(".file-button"); //가 실행
    var fileTriggetButton = section.querySelector(".file-trigger-button");//가 클릭되지만

    fileTriggetButton.onclick =function(){
        var event = new MouseEvent("click",{
            'view':window,
            'bubbles':true,
            'cancelable':true
        });
        fileButton.dispatchEvent(event);//이벤트전달
    };

})