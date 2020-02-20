def digit_factorial(max_num)
    numbers = []
    for num in 3..max_num
        sum = 0
        puts "Checking: #{num}"
        num.digits.each {|d| sum += factorial(d)}
        if sum == num
            numbers << num
        end
    end
    puts numbers
end

def factorial(num)
    product = 1
    while num > 0
        product *= num
        num -= 1
    end
    product
end

digit_factorial(7 * factorial(9)) #Answer: 145 and 40,585
