require 'prime'

def quadratic_primes(max_ab)
    a = -(max_ab - 1)
    bs = get_primes(max_ab)
    answers = []
    c = 0
    new_a = 0
    new_b = 0

    while a < max_ab
        bs.each do |b|
            n = consecutive_primes(a, b)
            if n > c
                c = n
                new_a = a
                new_b = b
            end
        end
        a += 1
    end

    "Product of coefficients is #{new_a * new_b}"

end

def get_primes(max_number)
    primes = []
    Prime.each(max_number) {|num| primes << num}
    primes
end

def consecutive_primes(a, b)
    n = 0
    while Prime.prime?((n ** 2) + (a * n) + b)
        n += 1
    end
    return n
end

p quadratic_primes(1000) #Answer: -59,231
