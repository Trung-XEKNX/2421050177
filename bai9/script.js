var cheDo = true;
function doiCheDo() {
    if (cheDo == true) {
        document.getElementsByTagName("body")[0].style = "background-color: black",
            document.getElementsByClassName("che-do")[0].style = "color:white";
        document.getElementsByClassName("che-do")[0].innerHTML = "chế độ tối"
        document.getElementsByTagName("img")[0].src = "mattrang.png"
        cheDo = false;
    }
    else {
        document.getElementsByTagName("body")[0].style = "background-color: white",
            document.getElementsByClassName("che-do")[0].style = "color: black";
        document.getElementsByClassName("che-do")[0].innerHTML = "chế độ sáng"
        document.getElementsByTagName("img")[0].src = "mattroi.png"
        cheDo=true;
    }
}