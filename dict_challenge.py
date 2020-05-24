# Write your sum_values function here:
def sum_values(my_dictionary):
  count = 0
  for element in my_dictionary.values():
    count += element
  return count

# Uncomment these function calls to test your sum_values function:
print(sum_values({"milk":5, "eggs":2, "flour": 3}))
# should print 10
print(sum_values({10:1, 100:2, 1000:3}))
# should print 6

# Write your sum_even_keys function here:
def sum_even_keys(my_dictionary):
  counter = 0
  for key in my_dictionary.keys():
    if key % 2 == 0:
      counter += my_dictionary[key]
  return counter

# Uncomment these function calls to test your  function:
print(sum_even_keys({1:5, 2:2, 3:3}))
# should print 2
print(sum_even_keys({10:1, 100:2, 1000:3}))
# should print 6

# Write your add_ten function here:
def add_ten(my_dictionary):
  for key in my_dictionary.keys():
    my_dictionary[key] += 10
  return my_dictionary
# Uncomment these function calls to test your  function:
print(add_ten({1:5, 2:2, 3:3}))
# should print {1:15, 2:12, 3:13}
print(add_ten({10:1, 100:2, 1000:3}))
# should print {10:11, 100:12, 1000:13
