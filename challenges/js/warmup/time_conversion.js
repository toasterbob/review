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
    var time = readLine();
    let time_arr = time.slice(0,8).split(":");
    let am_pm = time.slice(8);
    if(am_pm === "PM" && time_arr[0] !== "12"){
        time_arr[0] = parseInt(time_arr[0]) + 12;
    }
    if(am_pm === "AM" && time_arr[0] === "12"){
        time_arr[0] = "00"
    }
    console.log(time_arr.join(":"));
}
