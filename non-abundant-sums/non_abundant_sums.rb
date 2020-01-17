def non_abundant_sums(x)
    abundant_nums = get_abundant_nums(x)
    double_abundants = get_double_abundants(abundant_nums, x)
    sum = 0
    for num in 1..x
        sum += num unless sum_of_abundants?(abundant_nums, num) || (double_abundants.include? num)
    end
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

print get_abundant_nums(285)
