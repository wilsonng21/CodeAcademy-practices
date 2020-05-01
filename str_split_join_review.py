love_maybe_lines = ['Always    ', '     in the middle of our bloodiest battles  ', 'you lay down your arms', '           like flowering mines    ','\n' ,'   to conquer me home.    ']


love_maybe_lines_stripped = []           #sets up for function below, allowing list to append output.

for line in love_maybe_lines:
  love_maybe_lines_stripped.append(line.strip())  #empty list will append the stripped list and rid empty spaces.
  
love_maybe_full = '\n'.join(love_maybe_lines_stripped)  #join every line into one big string with multilines.

print(love_maybe_full)
