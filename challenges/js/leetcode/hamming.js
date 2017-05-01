var hammingDistance = function(x, y) {

    function get_bits(value){
        var base2_ = (value).toString(2).split("").reverse().join("");
        var baseL_ = new Array(32 - base2_.length).join("0");
        var base2 = base2_ + baseL_;
        return base2;
    }

    x = get_bits(x);
    y = get_bits(y);

    let ham = 0;
    for(let i = 0; i < y.length; i++){
        if(x[i] !== y[i]){
            ham++;
        }
    }
    return ham;
};

var hammingDistance2 = function(x, y) {
    return (x ^ y).toString(2).replace(/0/g, '').length;
};
