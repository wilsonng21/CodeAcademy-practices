shopping_list = []

def show_help():
    print("What should we pick up at the store?")
    print("""Enter "DONE" to stop adding items. 
Enter "HELP" for this help.
ENTER "SHOW" to show your shopping list.""")
    
def add_to_list(item):
    shopping_list.append(item)
    print("There are", len(shopping_list), "items on the list.")
    
def show_list():
    print("Here's what you have so far:")
    for item in shopping_list:
        print(item)
    
show_help()

while True:
    new_item = input("> ")
    if new_item == 'DONE':
        break
    elif new_item == 'HELP':
        show_help()
        continue
    elif new_item == 'SHOW':
        show_list()
        continue
        
    add_to_list(new_item)
    
