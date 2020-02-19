def get_denominator_of_fraction_product(arr)
    i = 0
    denominator = 1
    while i < arr.length
        denominator *= arr[i][1]
        i += 1
    end
    p "The denominator is #{denominator}."
end

def get_digit_cancelling_fractions()
    possible_fractions = find_fractions(get_possible_nums())
    digit_cancelling_fractions = []
    for fraction in possible_fractions
        if digit_cancelling_fraction(fraction[0], fraction[1])
            digit_cancelling_fractions << fraction
        end
    end
    digit_cancelling_fractions
end

def get_possible_nums()
    nums = []
    for num in 12..98
        if num % 10 != 0
            if num.digits.uniq().length > 1
                nums << num
            end
        end
    end
    nums
end

def find_fractions(arr)
    fractions = []
    for num in arr
        for den in arr
            if num != den
                if num < den
                    if den.digits.include? num.digits[0] or den.digits.include? num.digits[1]
                        fractions << [num, den]
                    end
                end
            end
        end
    end
    fractions
end

def digit_cancelling_fraction(num, den)
    if num.digits.sort != den.digits.sort
        common_digit = num.digits & den.digits
        new_num = (num.digits - common_digit).join.to_f
        new_den = (den.digits - common_digit).join.to_f
        if (num.to_f / den.to_f) === (new_num / new_den) and new_num != new_den
            true
        end
    end
end

get_denominator_of_fraction_product(get_digit_cancelling_fractions()) #Answer: 38,729,600
