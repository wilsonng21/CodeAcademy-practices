#Task 01

birthday = raw_input('When is your birthday? ')
print(birthday)

#Task 02

pages_read = raw_input('How many pages have you read last week? ')
pages_read = int(pages_read)
type(pages_read)

#Task 03

BP_STATUS = raw_input('What is your blood pressure? ')
BP_STATUS = int(BP_STATUS)

if BP_STATUS <= 89:
    BP_STATUS = 'Low'
elif BP_STATUS >= 90 and BP_STATUS <= 119:
    BP_STATUS = 'Ideal'
elif BP_STATUS >= 120 and BP_STATUS <= 139:
    BP_STATUS = 'Warning'
elif BP_STATUS >=140 and BP_STATUS <= 159:
    BP_STATUS = 'High'
elif BP_STATUS >= 160:
    BP_STATUS = 'Emergency'

nice_str = 'Your status is currently: {}'
print(nice_str.format(BP_STATUS))

