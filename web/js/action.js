/*切换状态*/
function estate(img,table,num) {
    console.log(img);
    console.log(table);

    var Img= document.getElementById(img);
    var Table=document.getElementById(table);
    console.log(Img.value);
    console.log(Table.display);
    if ("closed" === Img.value) {
        Img.value="opened";
        Img.src="../../image/admin/opened"+num+".png";
        Table.style.display="block";
    }
    else {
        Img.value="closed";
        Img.src="../../image/admin/closed"+num+".png";
        Table.style.display="none";
    }
}

function startTime() {
    var today = new Date();
    var year = today.getFullYear();
    var month = today.getMonth() + 1;
    var day = today.getDate();
    var hour = today.getHours();
    var minute = today.getMinutes();
    var second = today.getSeconds();
    month = checkTime(month);
    hour = checkTime(hour);
    minute = checkTime(minute);
    second = checkTime(second);
    document.getElementById("time").innerHTML = year + "年" + month + "月" + day + "日 " + hour + ":" + minute + ":" + second;
    t = setTimeout("startTime()", 1000);
}
function checkTime(i) {
    if(i < 10)
        i = "0" + i;
    return i;
}

