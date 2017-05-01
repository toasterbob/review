function processData(input) {
    //Enter your code here
    let check = false;
    while(!check){
        let result = "";
        check = true;
        for(let i = 0; i < input.length; i++){
            if(input[i] !== input[i + 1]){
                result += input[i]
            } else {
                i++;
                check = false;
            }
        }
        input = result;
    }

    if(input === ""){
        console.log("Empty String");
    } else{
        console.log(input);
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
