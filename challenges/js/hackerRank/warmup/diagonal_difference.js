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
    var a = [];
    for(a_i = 0; a_i < n; a_i++){
       a[a_i] = readLine().split(' ');
       a[a_i] = a[a_i].map(Number);
    }
    let long = a.length;
    let sum1 = 0;
    let sum2 = 0;
    for(let i = 0; i < long; i++){
        let last = long - 1 - i;
        sum1 = sum1 + a[i][i];
        sum2 = sum2 + a[i][last]
    }
    console.log(Math.abs(sum1 - sum2))

}
