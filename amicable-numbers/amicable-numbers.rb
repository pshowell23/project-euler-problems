def sum_of_amicable_numbers_under(x)
    amicable_numbers_under(x).sum
end

def amicable_numbers_under(x)
    amicable_numbers = []
    for a in 1..x do
        b = sum_of_divisors(a)
        if is_amicable(a, b)
            amicable_numbers << a unless amicable_numbers.include?(a)
            amicable_numbers << b unless amicable_numbers.include?(b)
        end
    end
    amicable_numbers
end

def is_amicable(x, y)
    return true if sum_of_divisors(x) == y && sum_of_divisors(y) == x && x != y
end

def sum_of_divisors(x)
    whole_divisors = (1..x).select {|n| x % n == 0 && n != x}
    whole_divisors.sum
end

puts sum_of_amicable_numbers_under(10000) # Answer: 31,626
