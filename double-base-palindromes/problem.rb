def double_base_palindromes(max_num)
    sum = 0
    for num in 1...max_num
        p "Checking #{num}" #Leaving this in to verify that the method is working
        if is_palindrome?(num) and binary_palindrome?(num)
            sum += num
        end
    end
    p "The sum of double-base palindromes under #{max_num} is #{sum}."
end

def is_palindrome?(num)
    return true if num.digits == num.digits.reverse
end

def binary_palindrome?(num)
    return true if num.to_s(2) == num.to_s(2).reverse #and num[1] != 0
end

double_base_palindromes(1000000) #Answer 872,187
