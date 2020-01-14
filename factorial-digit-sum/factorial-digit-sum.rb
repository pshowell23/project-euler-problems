def factorial (x)
    product = 1
    while x > 1
        product *= x
        x -= 1
    end
    product
end

def add_digits(x)
    sum = 0
    x.digits.each {|d| sum += d}
    sum
end

puts add_digits(factorial(100))
