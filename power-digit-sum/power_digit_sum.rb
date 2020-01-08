#Takes number (base) to power of exp and returns sum of the answer's digits
def power_digit_sum(base, exp)
    sum = 0
    for i in (base ** exp).digits
        sum += i
    end
    sum
end

puts power_digit_sum(2, 1000) #Answer 1366
