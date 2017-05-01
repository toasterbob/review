function processData(input) {
    //Enter your code here
    result = "";
    for(let i = 0; i < input.length; i++){
        if(input[i] !== input[i + 1]){
            result += input[i];
        } else{
            i++;
        }
    }
    if(result === ""){
        console.log("Empty String");
    } else{
        console.log(result);
    }

}

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});
