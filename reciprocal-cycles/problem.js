/*
* Big shoutout to the person who wrote this code!
* Really helped me understand what was needing to be done.
* https://jsfiddle.net/6cz2hupt/
*/

function longestReciprocalCycle(maxNum) {
    var longestNum = 1;
    var largestReciprocalCycle = 1;

    for(var currentNum = longestNum + 1; currentNum <= maxNum; currentNum++) {
        var cycleSize = amountOfRepeatingDigits(currentNum);

        if(cycleSize > largestReciprocalCycle) {
            largestReciprocalCycle = cycleSize;
            longestNum = currentNum;
        }
    }

    return longestNum;
};

function amountOfRepeatingDigits(num) {
    var numerator = 1;
    var numerators = new Array();
    var numeratorDigits = new Array();

    while(!repeating) {
        if(numerator == 0) {
            return 0;
        }

        for(var i = 0; i < numerators.length; i++) {
            if(numerator == numerators[i]) {
                var repeating = 0;

                for(var j = i; j < numerators.length; j++) {
                    repeating += numeratorDigits[j];
                }

                return repeating;
            }
        }

        numerators[numerators.length] = numerator;
        var digits = 1;
        while(num > numerator) {
            numerator *= 10;
            digits++;
        }
        numeratorDigits[numeratorDigits.length] = digits;

        numerator = numerator % num;
    }
};

console.log(longestReciprocalCycle(1000));
