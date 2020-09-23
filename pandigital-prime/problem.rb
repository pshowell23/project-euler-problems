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
  prime_pandigitals = []
  pandigital_numbers = get_pandigital_numbers(max_digit)
  pandigital_numbers.each {|num| prime_pandigitals << num if Prime.prime?(num)}
  prime_pandigitals
end

def get_pandigital_numbers(max_digit)
    pandigital_numbers = (1..max_digit).to_a.permutation.map &:join
    pandigital_numbers.map(&:to_i)
end

puts highest_pandigital_prime() # Answer: 7652413
