require 'prime'

def get_nth_prime(n)
    prime_nums = []
    x = 1

    while prime_nums.length < n
        if Prime.prime?(x)
            prime_nums << x
        end
        x += 1
    end
    prime_nums.last
end

puts get_nth_prime(10001) #104743
