/*
实现图片的动态切换
*/
window.onload = slider();


function slider(){
    var sliderbox = document.getElementById('bimg');
    
    var pic = document.getElementById('top_pictures');
    var picdiv = pic.getElementsByTagName('div');


    var hint = document.getElementById('info');
    var hintdiv = hint.getElementsByTagName('div');
    
    var numlable = document.getElementById('simg-wrap');
    var numlablediv = numlable.getElementsByTagName('div');
    
    var inow = 0;


    sliderbox.onmouseover = function() {
        clearInterval(timer);
    }


    sliderbox.onmouseout =function() {
        timer = setInterval(autoplay, 2000);
    }


    for(var i=0; i<numlablediv.length; i++) {
        numlablediv[i].index = i;
        numlablediv[i].onclick = function() {
            clearInterval(timer);
            for(var a=0; a<numlablediv.length; a++) {
                numlablediv[a].className = "";
                hintdiv[a].style.display = "none";
                picdiv[a].style.display = "none";
            }
            this.className = "numlable";
            picdiv[this.index].style.display = "block";
            hintdiv[this.index].style.display = "block";
            inow = this.index;
        }
    }


    function autoplay() {
        for(var i=0; i<picdiv.length; i++) {

            picdiv[i].style.display = "none";
            hintdiv[i].style.display = "none";
            numlablediv[i].className = "";
        }

  
        picdiv[inow].style.display = "block";
        hintdiv[inow].style.display = "block";
        numlablediv[inow].className = "numlable";
        inow = inow==picdiv.length-1 ? 0 : inow+1;
    }


    timer = setInterval(autoplay, 3000);
    
};
