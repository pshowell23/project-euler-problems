// UK Coin values in pences(p)
var coinValues = [1, 2, 5, 10, 20, 50, 100, 200];

function coinSums(total) {
    // Creates a table to track coin usage
    var table = new Uint32Array(total + 1);
    // Sets ways for only 1 cent to be used to 1
    table[0] = 1;
    // Loop finds total amount of combinations coins can be used to create total
    for(var i = 0; i < coinValues.length; i++) {
        for(var j = coinValues[i]; j <= total; j++) {
            table[j] += table[j - coinValues[i]];
        }
    }
    return "There are " + table[total] + " total combinations of coins to equal " + total + " pence.";
}

console.log(coinSums(200)); // Answer: 73,682
