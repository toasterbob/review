function StairCase(n) {
  let result = ""
  for(let i=1; i <= n; i++){
     let space = " ".repeat(n - i);
     let stairs = "#".repeat(i);
     console.log(space + stairs);
  }

}

StairCase(6);


process.stdin.resume();
process.stdin.setEncoding('ascii');

var input_stdin = "";
var input_stdin_array = "";
var input_currentline = 0;

process.stdin.on('data', function (data) {
    input_stdin += data;
});

process.stdin.on('end', function () {
    input_stdin_array = input_stdin.split("\n");
    main();
});

function readLine() {
    return input_stdin_array[input_currentline++];
}

/////////////// ignore above this line ////////////////////

function main() {
    var n = parseInt(readLine());
    for(let i = 1; i <= n; i++){
        let spaces = " ".repeat(n - i);
        let stairs = "#".repeat(i);
        console.log(`${spaces}${stairs}`)
    }

}
