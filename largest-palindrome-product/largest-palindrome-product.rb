def get_palindromes()
    palindromes = []
    for x in 100...1000
        for y in 100...1000
            product = x * y
            product = product.to_s
            if product == product.reverse
                palindromes << product.to_i
            end
        end
    end
    return palindromes
end

def find_largest_palindrome(arr)
    return arr.max
end

palindromes = get_palindromes()

puts find_largest_palindrome(palindromes)
