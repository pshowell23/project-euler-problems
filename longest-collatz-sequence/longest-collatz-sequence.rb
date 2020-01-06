#Returns starting number of longest Collatz sequence where starting number is less than limit provided
def get_longest_collatz(limit)
    starting_num = 2
    longest_collatz = []
    while starting_num < limit do
        collatz = get_collatz(starting_num)
        if collatz.length > longest_collatz.length
            longest_collatz = collatz
        end
        starting_num += 1
    end

    return "The longest Collatz sequnce begins with #{longest_collatz.first} for #{longest_collatz.count} numbers: #{longest_collatz}"
end

# Generate Collatz squence starting with number
def get_collatz(number)
    sequence = []
    while number > 1 do
        sequence << number
        if number % 2 == 0
            number = even_number(number)
        else
            number = odd_number(number)
        end
    end
    sequence << 1
    sequence
end

# Generate next number in Collatz sequence if x is even
def even_number(x)
    x / 2
end

# Generate next number in Collatz sequence if x is odd
def odd_number(x)
    (3 * x) + 1
end

puts get_longest_collatz(1000000) #Answer: 837,799
