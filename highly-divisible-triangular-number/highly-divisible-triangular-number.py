import math

def factors_to_limit(limit):
    factors = []
    num = 1
    triangle_num = 0
    while len(factors) <= limit:
        triangle_num = gen_triangle_nums(num)
        factors = get_multiples(triangle_num)
        num += 1
    return f"The first triangle number with {limit} multiples is {triangle_num}"

def gen_triangle_nums(n):
    return int((n*(n+1))/2)

def get_multiples(num):
    limit = math.sqrt(num)
    multiples = []
    multiple = 1
    while multiple < limit:
        if num % multiple == 0:
            multiples.append(multiple)
            multiples.append(int(num / multiple))
        multiple += 1
    return multiples

print(factors_to_limit(50)) #Answer is 76,576,500
