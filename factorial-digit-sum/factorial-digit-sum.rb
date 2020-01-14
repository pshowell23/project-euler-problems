def factorial_digits_sum (x)
    product = 1
    sum = 0
    while x > 1
        product *= x
        x -= 1
    end
    product.digits.each {|digit| sum += digit}
    sum
end

puts factorial_digits_sum(100)
