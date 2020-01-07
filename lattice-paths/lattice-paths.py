import math

def total_combinations(grid_dimension):
    total_moves = (grid_dimension + 1) * 2
    items_chosen = grid_dimension - 1

    total = math.comb(total_moves, items_chosen)

    return f"Total combinations for grid of {grid_dimension} x {grid_dimension}: {total}"


print(total_combinations(20)) #446,775,310,800 total combinations
