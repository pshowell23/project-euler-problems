function howManyDistinctPowers(a_limit, b_limit) {
    return getPowers(a_limit, b_limit).length;
}

// Returns unqiue answers for a ** b
function getPowers(a_limit, b_limit) {
    var powers = new Array();

    for(var a = 2; a <= a_limit; a++) {
        for(var b = 2; b <= b_limit; b++) {
            var power = a ** b;
            if(!(powers.includes(power))) {
                powers.push(power);
            }
        }
    }
    powers = powers.sort(function(a,b) {return a-b});
    return powers;
}

console.log(howManyDistinctPowers(100, 100)); //Answer: 9220
