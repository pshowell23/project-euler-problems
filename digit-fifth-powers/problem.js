/*
* Using upper limit of 355,000
* Justification can be found here: https://www.xarg.org/puzzle/project-euler/problem-30/
*/

function fifthDigitPowers(exp) {
    powers = new Array();
    for(var i = 2; i < 355000; i++) {
        if(i == poweredSum(digitsOf(i), exp)) {
            powers.push(i);
        }
    }
    return sumOf(powers);
}

function digitsOf(num) {
    out = new Array();
    stringNum = num.toString();

    for(var i = 0; i < stringNum.length; i++) {
        out.push(stringNum[i]);
    }

    return out;
}

function poweredSum(arr, exp) {
    var out = 0;

    for(var i = 0; i < arr.length; i++) {
        out += parseInt(arr[i]) ** exp;
    }

    return out
}

function sumOf(arr) {
    var sum = 0;

    for(var i = 0; i < arr.length; i++) {
        sum += arr[i];
    };

    return sum;
}

console.log(fifthDigitPowers(5)); //Answer: 443,839
