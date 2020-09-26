require 'prime'

def highest_pandigital_prime
    max_digit = 9
    prime_pandigitals = get_prime_pandigitals_of_n_digits(max_digit)
    while prime_pandigitals == []
        max_digit -= 1
        prime_pandigitals = get_prime_pandigitals_of_n_digits(max_digit)
    end
    prime_pandigitals.max
end

def get_prime_pandigitals_of_n_digits(max_digit)
    (1..max_digit).to_a.permutation.map(&:join).map(&:to_i).select { |num| Prime.prime?(num) }
end

puts highest_pandigital_prime() # Answer: 7652413
