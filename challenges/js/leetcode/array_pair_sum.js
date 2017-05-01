var arrayPairSum = function(nums) {
    function sortNumber(a,b) {
        return a - b;
    }
    function sortNumber2(a,b){
        if(a > b){
            return 1;
        } else if(a < b){
            return -1;
        } else{
            return 0;
        }
    }
    nums = nums.sort(sortNumber2);
    let sum = 0;
    for(let i = 0; i < nums.length; i++){
        if(i % 2 === 0){
            sum += nums[i];
        }
    }
    return sum;
};

console.log(arrayPairSum([3, 1, 8, 12]));
