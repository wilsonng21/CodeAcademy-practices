def divisible_by_ten(nums):
  count = 0
  for number in nums:
    if number % 10 == 0:
      count += 1
  return count

def add_greetings(names):
  empty_list = []
  for name in names:
    empty_list.append("Hello, " + name)
  return empty_list

def delete_starting_evens(lst):
  while (len(lst) > 0 and lst[0] % 2 == 0):
    lst = lst[1:]
  return lst

def odd_indices(lst):
  new_list = []
  for index in range(1, len(lst), 2):
    new_list.append(lst[index])
  return new_list
