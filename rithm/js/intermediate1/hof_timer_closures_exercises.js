
function countDown(x){
  let timerId = setInterval(function(){
      if(x <= 0){
        clearInterval(timerId);
        console.log("DONE!");
      } else {
        console.log(x);
      }
      x--;
  },1000);
}

countDown(4);
// 3
// 2
// 1
// "DONE!"

////////////////////////////////////////////////////////////////////////

function randomGame(){
  let count = 0;
  let timeId = setInterval(function (){
    if(Math.random() > .75){
      clearInterval(timeId);
      console.log(`Your score is ${count}`);
    } else {
      console.log(++count);
    }
  }, 1000);
}

////////////////////////////////////////////////////////////////////////







////////////////////////////////////////////////////////////////////////






//
