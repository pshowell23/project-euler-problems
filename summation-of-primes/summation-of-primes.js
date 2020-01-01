//Gets sum of all primes up to a limit
function primeSummation(limit){
    var primes = getPrimes(limit);
    var sum = 0;

    for(var i = 0; i < primes.length; i++){
        sum += primes[i];
    }

    return "The summation of all primes less than or equal to " + limit + " is " + sum;
}

//Returns all primes up to a limit
function getPrimes(limit){
    var primes = []

    for(var i = 2; i < limit; i++){
        number = isPrime(i)
        if(number) {
            primes.push(i)
        }
    }

    return primes
}

//Determines if a number is prime
function isPrime(x){
    var loopLimiter = Math.sqrt(x);
    for(var i = 2; i <= loopLimiter; i++ ){
        if(x % i == 0){
            return false;
        }
    }
    return x > 1;
}

console.log(primeSummation(2000000)) //Answer is: 142,913,828,922
