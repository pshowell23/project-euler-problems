def pandigital_products_sum(max, max_digit)
    products = get_pandigital_products(max, max_digit)
    p products.sum
end

def get_pandigital_products(max, max_digit)
    products = []
    multipliers = []
    x = 1
    y = 1

    while x < max
        if not multipliers.include?(x) && multipliers.include?(y)
            if has_unique_digits(x)
                while y < max
                    if has_unique_digits(y)
                        if is_pandigital_to(x, y, x * y, max_digit)
                            multipliers << x unless multipliers.include?(x)
                            multipliers << y unless multipliers.include?(y)
                            products << x * y unless products.include?(x * y)
                        end
                    end
                    y += 1
                end
            end
            x += 1
            y = 1
        end
    end

    products
end

def has_unique_digits(num)
    digits = num.digits.reverse.uniq.join.to_i
    return true if num === digits
end

def is_pandigital_to(x, y, z, max_digit)
    digits = []
    [x, y, z].each {|num| digits << num.digits}
    digits = digits.join.to_i.digits.sort
    return true if digits == (1..max_digit).to_a
end

pandigital_products_sum(4321, 9) #Answer 45,228
