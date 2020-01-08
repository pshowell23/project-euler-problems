#Takes number (base) to power of exp and returns sum of the answer's digits
def power_digit_sum(base, exp)
    num = (base ** exp).digits
    sum = 0
    for i in num
        sum += i
    end
    sum
end

puts power_digit_sum(2, 1000) #Answer 1366
