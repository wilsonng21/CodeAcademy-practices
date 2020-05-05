letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

def unique_english_letters(word):
  count = 0
  for letter in letters:
    if letter in word:
      count += 1
  return count
  
def count_char_x(word, x):
  return word.count(x)
  
 # Write your count_multi_char_x function here:
def count_multi_char_x(word, x):
  for letter in x:
    return word.count(x)
# Uncomment these function calls to test your function:
print(count_multi_char_x("mississippi", "iss"))
# should print 2
print(count_multi_char_x("apple", "pp"))
# should print 1

#it should return the number of times x appears in word
