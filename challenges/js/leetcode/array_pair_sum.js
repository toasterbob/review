var arrayPairSum = function(nums) {
    function sortNumber(a,b) {
        return a - b;
    }
    nums = nums.sort(sortNumber);
    let sum = 0;
    for(let i = 0; i < nums.length; i++){
        if(i % 2 === 0){
            sum += nums[i];
        }
    }
    return sum;
};
