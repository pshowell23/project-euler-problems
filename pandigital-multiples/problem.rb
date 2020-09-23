def get_pandigital_numbers(max_digit)
    pandigital_numbers = (1..max_digit).to_a.permutation.map &:join
end

def sqrt_of(num)
    Math.sqrt(num)
end

puts get_pandigital_numbers(4)
