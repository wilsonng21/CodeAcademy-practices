# created a list of toppings.
toppings = ['pepperoni', 'pineapple', 'cheese', 'sausage', 'olives', 'anchovies', 'mushrooms']

# created a list of prices
prices = [2, 6, 1, 3, 2, 7, 2]

# finds length of toppings
num_pizzas = len(toppings)

#practicing concatenation 
print('We sell ' + str(num_pizzas) + ' different kinds of pizza!')

# zipping together prices and toppings, then turning the results into a list and saving into a variable named pizzas.
pizzas = (list(zip(prices, toppings)))

print(pizzas)

# peforming sort function on pizzas list
pizzas.sort()
print(pizzas)

# looks at the first index in pizzas list
cheapest_pizza = pizzas[0]

# looks at the last index in pizzas list
priciest_pizza = pizzas[-1]

# looks at the first three indexes in pizzas list.
three_cheapest = pizzas[:3]

print(three_cheapest)

# counting the occurence of the number '2' in prices list.
num_two_dollar_slices = prices.count(2)

print(num_two_dollar_slices)

