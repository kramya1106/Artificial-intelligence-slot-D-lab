import random

def hill_climbing(f, init_x, step_size=1e-4, max_iter=1000):
    x = init_x
    best_x = x
    best_y = f(x)
    for i in range(max_iter):
        newx = x + step_size * (2 * random.random() - 1)
        newy= f(newx)
        if newy> best_y:
            x = newx
            best_x = x
            best_y = newy
    return best_x, best_y

# Example usage:
def f(x):
    return x**2

best_x, best_y = hill_climbing(f, 0)
print("Best x:", best_x)
print("Best y:", best_y)
