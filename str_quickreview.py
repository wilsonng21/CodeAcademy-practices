def contains(big_string, little_string):
  for item in little_string:
    if little_string in big_string:
      return True
    else:
      return False

def common_letters(string_one, string_two):
  new_list = []

  for item in string_one:
    if item in string_two:
      new_list.append(item)
  return list(set(new_list))
  
  
