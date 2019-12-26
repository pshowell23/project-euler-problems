$fib_nums = [1, 2]

# Adds to Fibonacci sequence all numbers below x
# If x is 10, Fibonacci sequence becomes [1, 2, 3, 5, 8]
def gen_new_fib_nums(x)
    while $fib_nums.last < x do
        last_nums = $fib_nums.last(2)
        $fib_nums << last_nums[0] + last_nums[1]
    end

    if $fib_nums.last > x
        $fib_nums.pop
    end
end

# Removes odd numbers from Fibonacci sequence
# [1, 2, 3, 5, 8] becomes [2, 8]
def even_fib_nums()
    even = []

    for x in 0...$fib_nums.length
        if $fib_nums[x].even?
            even << $fib_nums[x]
        end
    end

    $fib_nums = even
end

# Finds and puts the sum of all numbers in the sequence
# [2, 8] = 10
def add_nums(nums)
    sum = 0
    for num in nums
        sum += num
    end
    puts "Total: #{sum}"
end

gen_new_fib_nums(4000000)
add_nums(even_fib_nums()) #Equals 4,613,732
