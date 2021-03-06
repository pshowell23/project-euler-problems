def non_abundant_sums(x)
    abundant_nums = get_abundant_nums(x)
    double_abundants = get_double_abundants(abundant_nums, x)
    other_nums = (1..x).select {|n| !(double_abundants.include?(x)) || !sum_of_abundants(abundant_nums, x)}
    sum = other_nums.sum
    "The sum of non-abundant numbers belonw #{x} is #{sum}"
end

def get_abundant_nums(x)
    abundant_nums = []
    for n in 12..x
        factors = get_factors(n)
        if factors.sum > n
            abundant_nums << n
        end
    end
    abundant_nums
end

def get_double_abundants(arr, x)
    double = []
    arr.each {|a| double << a * 2 unless a * 2 > x}
    double
end

def get_factors(x)
    factors = []
    for n in 1..x
        if x % n == 0
            factors << n
        end
    end
    factors - [x]
end

def sum_of_abundants?(arr, x)
    !!arr.uniq.combination(2).detect {|a, b| a + b == x}
end

print non_abundant_sums(28123)
