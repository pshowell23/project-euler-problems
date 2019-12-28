require 'prime'

def lcm(highestFactor)
    factors = Hash.new
    x = 2
    least_common_multiple = 1

    (highestFactor - 1).times do
        prime_factors = prime_factorization(x)
        factors[x] = prime_factors
        x += 1
    end

    final_factors = factor_frequency(factors)

    for num, power in final_factors
        least_common_multiple *= num ** power
    end

    least_common_multiple
end

# prime_factorization found at https://codereview.stackexchange.com/questions/57256/is-this-a-good-ruby-implementation-of-prime-factorization
def prime_factorization(n)
    Prime.prime_division(n).flat_map {|factor, power| [factor] * power}
end

def factor_frequency(arr)
    frequency = Hash.new

    for key, val in arr
        for num in val
            if frequency[num]
                if val.count(num) > frequency[num]
                    frequency[num] = val.count(num)
                end
            else
                frequency[num] = val.count(num)
            end
        end
    end

    frequency
end

puts lcm(20) #Least Common Multiple of 1...20 is 232,792,560
