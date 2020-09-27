function mostTriples(num) {
    let lengthOfTriplets = 0;
    let maxNum = 0;
    let triplets = [];

    while(num > 0) {
        if(num % 2 == 0) {
            triplets = findPythagoreanTripletsOf(num);
            if(triplets.length > lengthOfTriplets) {
                lengthOfTriplets = triplets.length;
                maxNum = num;
            }
        }
        num--;
    }
    return maxNum;
}

function findPythagoreanTripletsOf(sum) {
    let triplets = [];

    //for(m = 2; m < sum / 2; m++) {
    //    for(n = 1; n < sum / 2; n++) {
    //        if(m > n) {
    //            if((m * (m + n)) == sum / 2){
    //                let a = (m ** 2) - (n ** 2);
    //                let b = (2 * m * n);
    //                let c = (m ** 2) + (n ** 2);
//
//                    if(a > 0 && b > 0 && c > 0) {
//                        triplets.push([a, b, c].sort(function(a,b) { return a - b }));
//                    }
//                }
//            }
//        }

    let factors = getFactors(sum / 2);

    console.log(factors)

    for(let i = 0; i < factors.length; i++) {
        factors = factors.sort(function(a,b) {return a - b})
        let m = factors[i][0];
        let n = factors[i][1] - factors[i][0];

        console.log(`m: ${m}, n: ${n}`)

        if(m > n) {
            if((m * (m + n)) == sum / 2){
                let a = (m ** 2) - (n ** 2);
                let b = (2 * m * n);
                let c = (m ** 2) + (n ** 2);

                if(a > 0 && b > 0 && c > 0) {
                    triplets.push([a, b, c].sort(function(a,b) { return a - b }));
                }
            }
        }
    }

    return triplets;
}

function getFactors(num) {
    let factors = [];

    for(let i = 2; i <= Math.floor(Math.sqrt(num)); i ++) {
        if(num % i == 0) {
            factors.push([i, num / i])
        }
    }

    return factors.sort(function(a,b) { return a - b });
}
console.log(findPythagoreanTripletsOf(120));
