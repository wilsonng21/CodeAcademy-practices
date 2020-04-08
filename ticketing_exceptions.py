TICKET_PRICE = 10

tickets_remaining = 100

SERVICE_CHARGE = 2 #once per transaction

def calculate_total(tickets_wanted):
    return (tickets_wanted * TICKET_PRICE) + SERVICE_CHARGE

while tickets_remaining >= 1:
    print("There are currently {} tickets remaining.".format(tickets_remaining))
    
    name = input("Hi, what's your name?  ")
    
    tickets_wanted = input("{}, how many tickets would you like?  ".format(name))
    
    # ValueError when inputting string.
    
    try:
        tickets_wanted = int(tickets_wanted)
        if tickets_wanted > tickets_remaining:
            raise ValueError("There are only {} tickets remaining.".format(tickets_remaining))
    except ValueError as err:
        # {} was outputting an unfriendly error, code below fixes that and makes the error more readable for users.
        if "base 10" in str(err):
             print("Sorry, but what you entered is not a number! Please try again")
        else:
             print("Oops, try inputting a valid number. {}".format(err))        
    else:  
        total = calculate_total(tickets_wanted)
        print("This is the total amount: ${}. With $2 service charge included!".format(total))
        
        confirmation = input("{}, would like like to proceed?\n[Enter yes/no]  ".format(name))
        
        if confirmation.lower() != "no":
            # Collect payment info.
            print("Purchase succesful!")
            tickets_remaining -= tickets_wanted
        else:
            print("Thank you, come again!")
        
    print("There are {} tickets remaining.".format(tickets_remaining))
    
if tickets_remaining == 0:
    print("Tickets are sold out!")
