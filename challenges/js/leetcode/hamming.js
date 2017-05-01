var hammingDistance = function(x, y) {
    x = x.toString(2);
    y = y.toString(2);
    let ham = 0;
    for(let i = 0; i < x.length; i++){
        if(x[i] !== y[i]){
            ham++;
        }
    }
    return ham;
};
