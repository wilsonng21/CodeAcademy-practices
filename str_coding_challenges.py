letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

def unique_english_letters(word):
  count = 0
  for letter in letters:
    if letter in word:
      count += 1
  return count
  
def count_char_x(word, x):
  return word.count(x)
  
 
