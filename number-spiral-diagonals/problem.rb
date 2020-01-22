# Gets sum of diagonal numbers arranged in dim by dim square
def spiral_diagnoals(dim)
    leg1 = get_square_leg(dim)
    leg2 = get_large_leg(leg1)
    leg3 = get_smaller_leg(leg1, leg2)
    leg4 = get_smaller_leg(leg1, leg3)
    sum = 1 + leg1.sum + leg2.sum + leg3.sum + leg4.sum
end

def get_square_leg(x)
    leg = []
    while x > 1
        leg << x ** 2
        x -= 2
    end
    leg
end

def get_large_leg(arr)
    leg = []
    for i in arr
        leg << i - (Integer.sqrt(i) - 1)
    end
    leg
end

def get_smaller_leg(arr1, arr2)
    leg = []
    for i in 0...arr1.length
        leg << arr2[i] - (Integer.sqrt(arr1[i]) - 1)
    end
    leg
end

p spiral_diagnoals(1001) # Answer: 669,171,001
