require 'prime'

def circular_primes(max_num)
    circular = []
    primes = get_primes(max_num)
    primes.each {|num| circular << num if is_circular?(num)}
    p "There are #{circular.length} circular primes under #{max_num}."
end

def get_primes(max_num)
    primes = []
    Prime.each(max_num) {|num| primes << num}
    primes
end

def is_circular?(num)
    prime_counter = 0
    digits = num.digits.reverse
    iterations = 0
    while iterations < digits.length
        check_num = digits.join.to_i
        if Prime.prime?(check_num)
            prime_counter += 1
        else
            break
        end
        first = digits.first
        digits.shift
        digits << first
        iterations += 1
    end

    if prime_counter == digits.length
        return true
    end
end

circular_primes(1000000) #Answer: 55
