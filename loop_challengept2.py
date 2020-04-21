def exponents(bases, powers):
  new_lst = []
  for base in bases:
    for power in powers:
      new_lst.append(base ** power)
  return new_lst
  
def larger_sum(lst1, lst2):
 if sum(lst1) == sum(lst2):
   return lst1
 elif sum(lst1) > sum(lst2):
   return lst1
 elif sum(lst1) < sum(lst2):
   return lst2
    
def over_nine_thousand(lst):
  sum = 0
  for number in lst:
    sum += number
    if (sum > 9000):
      break
  return sum
  
def max_num(nums):
  return max(nums)
  
def same_values(lst1, lst2):
  new_list = []
  for i in range(len(lst1)):
    if lst1[i] == lst2[i]:
      new_list.append(i)
  return new_list
  
def reversed_list(lst1, lst2):
  for index in range(len(lst1)):
    if lst1[index] != lst2[len(lst2) - 1 - index]:
      return False
  return True
