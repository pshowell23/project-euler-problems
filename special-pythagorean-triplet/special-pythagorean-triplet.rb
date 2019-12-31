def find_pythagorean_triplets(limit)
    a,b,c,n = 3,4,5,1

    while a+b+c <= limit
        a *= n
        b *= n
        c *= n
        n += 1
    end

    triplets = [a, b, c]

    triplets

end

def product_of_triplets(limit)
    triplets = find_pythagorean_triplets(limit)
    product = 1

    for num in triplets
        product *= num
    end

    product
end

print product_of_triplets(1000) #Should equal 103,680,000
