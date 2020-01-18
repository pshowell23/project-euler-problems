numbers = [0,1,2,3,4,5,6,7,8,9]

def get_nth_lexiographic_permutation(digits, n)
    permutations = get_lexiographic_permutations(digits)
    "The #{n}th permutation of the digits supplied it #{permutations[n - 1]}"
end

def get_lexiographic_permutations(arr)
    permutations = arr.permutation.to_a
    for i in 0...permutations.length
        permutations[i] = permutations[i].join('')
    end
    permutations.sort
end

print get_nth_lexiographic_permutation(numbers, 1000000) #2,783,915,460
