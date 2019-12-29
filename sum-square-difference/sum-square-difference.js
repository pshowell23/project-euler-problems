function sumSquareDifference(x){
    var sumOfSquares = 0;
    var squareOfSum = 0;
    var sum = 0;
    var diff = 0;

    for(i = 1; i <= x; i++) {
        sumOfSquares += i * i;
        sum += i;
    };

    squareOfSum = sum * sum;

    diff = squareOfSum - sumOfSquares;

    return diff
}

console.log(sumSquareDifference(100))
