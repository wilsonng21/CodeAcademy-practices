TICKET_PRICE = 10

tickets_remaining = 100

while tickets_remaining >= 1:
    print("There are currently {} tickets remaining.".format(tickets_remaining))
    
    name = input("Hi, what's your name?  ")
    
    tickets_wanted = int(input("{}, how many tickets would you like?  ".format(name)))
    
    def calculate_price(tickets_wanted):
        total = tickets_wanted * TICKET_PRICE
        print("This is the total amount: ${}.".format(total))
    
    calculate_price(tickets_wanted)
    
    confirmation = input("{}, would like like to proceed?\n[Enter yes/no]  ".format(name))
    
    if confirmation.lower() != "no":
        print("Purchase succesful!")
        tickets_remaining -= tickets_wanted
        # Collect payment info.
    else:
        print("Thank you, come again!")
        
    print("There are {} tickets remaining.".format(tickets_remaining))
    
if tickets_remaining == 0:
    print("Tickets are sold out!")

