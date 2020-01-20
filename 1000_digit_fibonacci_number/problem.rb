def digit_fibonacci_number(x)
    fib_nums = [1,2]
    until fib_nums.last.digits.length == x do
        last_nums = fib_nums.last(2)
        fib_num = last_nums[0] + last_nums[1]
        fib_nums << fib_num
    end
    fib_num
end

puts digit_fibonacci_number(1000)
