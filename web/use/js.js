function changeBlueColor() {
    var div1=document.getElementById("mainTopDiv");
    var div2=document.getElementById("mainBottomDiv");
    div1.style.background="-webkit-linear-gradient(top,#5404FF,#4C48FF,#7F7EFF)";
    div2.style.background="blue";
}
function changeRedColor() {
    var div1=document.getElementById("mainTopDiv");
    var div2=document.getElementById("mainBottomDiv");
    div1.style.background="-webkit-linear-gradient(top,#FF0045,#FF2520,#FF7365)";
    div2.style.background="red";
}
function changeGreenColor() {
    var div1=document.getElementById("mainTopDiv");
    var div2=document.getElementById("mainBottomDiv");
    div1.style.background="-webkit-linear-gradient(top,#9CFF06,#92FF7D,#C0FFB6)";
    div2.style.background="green";
}

function changeTdColor(number) {
    var id="tdOfLink"+number;
    var td=document.getElementById(id);
    td.style.background="#F2EF9A";
    /*for ( var i=1;i<=7;i++){
        var id="tdOfLink"+i;
        var td=document.getElementById(id);
        if(i==number){
            td.style.background="#F2EF9A";
        }
        else {
            var mainBackground = document.getElementById("tableCenter").style.background;
            td.style.background = mainBackground;
        }

    }*/
}
function reduction(number) {
        var id="tdOfLink"+number;
        var td=document.getElementById(id);
        var mainBackground = document.getElementById("tableCenter").style.background;
        td.style.background = mainBackground;

}
function changeText(text,tdName) {
    var div=document.getElementById("changeDiv");
    div.innerHTML=text;
    var td=document.getElementById("changeTd");
    td.innerHTML=tdName;
}