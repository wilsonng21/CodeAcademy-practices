name = input("What's your name? ")

# TODO: Ask the user by name if they understand Python while loops
question = input('{}, do you understand Python while loops?\n[Enter Yes/No]  '.format(name)).lower()


# TODO: Write a while statement that checks if the user doesn't understand while loops

while 'yes' not in question:
    question = input('{}, A while loop is ... and blah blah blah. It will run as long as condition is true.\nDo you understand now?\n[Enter Yes/No]  '.format(name)).lower()
 
# TODO: Since the user doesn't understand while loops, let's explain them.
# TODO: Ask the user again, by name, if they understand while loops.

  
# TODO: Outside the while loop, congratulate the user for understanding while loops
 
print('Congratulations {}, you now understand the while loop'.format(name))
