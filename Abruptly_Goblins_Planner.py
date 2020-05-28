#Introduction
#Opening your comic book store, the Sorcery Society, has been a lifelong dream come true. You quickly diversified your shop #offerings to include miniatures, plush toys, collectible card games, and board games. Eventually, the store became more a #games store with a selection of this week's newest comic books and a small offering of graphic novel paperbacks. Completing #your transformation means offering space for local tabletop gamers. They love to play their favorite RPG, "Abruptly Goblins!" #and will happily pay you per chair to secure the space to do it. Unfortunately, planning the game night has fallen to you. If #you pick the wrong night, not enough people will come and the game night will be cancelled. You decide it's best that you #automate the game night selector to get the most people through the door. First you need to create a list of people who will #be attending the game night.

#Instructions
#Create an empty list called gamers. This will be your list of people who are attending game night.

gamers = []

def add_gamer(gamer, gamers_list):
    if "name" in gamer.keys() and "availability" in gamer.keys():
        gamers_list.append(gamer)
    return gamers_list
    
kimberly = {"name":"Kimberly Warner", "availability": ["Monday", "Tuesday", "Friday"]}
add_gamer(kimberly, gamers)

print(gamers)

add_gamer({'name':'Thomas Nelson','availability': ["Tuesday", "Thursday", "Saturday"]}, gamers)
add_gamer({'name':'Joyce Sellers','availability': ["Monday", "Wednesday", "Friday", "Saturday"]}, gamers)
add_gamer({'name':'Michelle Reyes','availability': ["Wednesday", "Thursday", "Sunday"]}, gamers)
add_gamer({'name':'Stephen Adams','availability': ["Thursday", "Saturday"]}, gamers)
add_gamer({'name': 'Joanne Lynn', 'availability': ["Monday", "Thursday"]}, gamers)
add_gamer({'name':'Latasha Bryan','availability': ["Monday", "Sunday"]}, gamers)
add_gamer({'name':'Crystal Brewer','availability': ["Thursday", "Friday", "Saturday"]}, gamers)
add_gamer({'name':'James Barnes Jr.','availability': ["Tuesday", "Wednesday", "Thursday", "Sunday"]}, gamers)
add_gamer({'name':'Michel Trujillo','availability': ["Monday", "Tuesday", "Wednesday"]}, gamers)

print(gamers)

def build_daily_frequency_table():
    days_of_the_week = {"Monday":0,
                        "Tuesday":0,
                        "Wednesday":0,
                        "Thursday":0,
                        "Friday":0,
                        "Saturday":0,
                        "Sunday":0
                        }
    return days_of_the_week

count_availability = build_daily_frequency_table()
print(count_availability)

def calculate_availability(gamers_list, available_frequency):
    for gamer in gamers:
        for day in gamer["availability"]:
            if day in count_availability.keys():
                available_frequency[day] += 1

calculate_availability(gamers, count_availability)
print(count_availability)

def find_best_night(availability_table):
    return max(availability_table, key=availability_table.get)
    
game_night = find_best_night(count_availability)
print(game_night)

def available_on_night(gamers_list, day):
    available_gamers = []
    for gamer in gamers_list:
        for availability in gamer["availability"]:
            if availability == day:
                available_gamers.append(gamer)
    return available_gamers

attending_game_night = available_on_night(gamers, game_night)
print(attending_game_night)

form_email = "Hi {name}, join us on {day_of_week} to play {game}!"

def send_email(gamers_who_can_attend, day, game):
    print(form_email.format(name=gamers_who_can_attend, day_of_week=day, game=game))

send_email(attending_game_night, game_night, "Abruptly Goblins")

unable_to_attend_best_night = []
for gamer in gamers:
    if game_night not in gamer["availability"]:
        unable_to_attend_best_night.append(gamer)
print(unable_to_attend_best_night)

second_night_availability = build_daily_frequency_table()
calculate_availability(unable_to_attend_best_night, second_night_availability)
print(second_night_availability)
second_night = find_best_night(second_night_availability)
print(second_night)

available_second_game_night = available_on_night(gamers, second_night)
print(available_second_game_night)
print(second_night)

send_email(available_second_game_night, second_night, "Abruptly Goblins!")
