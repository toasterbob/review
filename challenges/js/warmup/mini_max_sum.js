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
    var a_temp = readLine().split(' ');
    var a = parseInt(a_temp[0]);
    var b = parseInt(a_temp[1]);
    var c = parseInt(a_temp[2]);
    var d = parseInt(a_temp[3]);
    var e = parseInt(a_temp[4]);
    let total = a + b + c + d + e;
    let min = total - a;
    let max = total - a;
    function val_check(num) {
        if(min > total - num){
            min = total - num;
        }
        if(max < total - num){
            max = total - num
        };
    }
    val_check(b);
    val_check(c);
    val_check(d);
    val_check(e);
    console.log(`${min} ${max}`)

}
