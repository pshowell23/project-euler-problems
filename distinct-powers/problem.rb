def how_many_distinct_powers(a_limit, b_limit)
    a, b = 2, 2
    powers = []
    while a <= a_limit
        while b <= b_limit
            power = a ** b
            if not powers.include?(power)
                powers << power
            end
            b += 1
        end
        b = 2
        a += 1
    end
    powers.sort.length
end


p how_many_distinct_powers(100, 100)
