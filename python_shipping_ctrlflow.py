cost_premium_ground = 125

def cost_ground(weight):
  if weight <= 2:
    return weight * 1.5 + 20
  elif weight > 2 and weight <= 6:
    return weight * 3 + 20
  elif weight > 6 and weight <= 10:
    return weight * 4 + 20
  elif weight > 10:
    return weight * 4.75 + 20

print(cost_ground(8.4))

def cost_drone(weight):
  if weight <= 2:
    return weight * 4.50
  elif weight > 2 and weight <= 6:
    return weight * 9.00
  elif weight > 6 and weight <= 10:
    return weight * 12.00
  elif weight > 10:
    return weight * 14.25
  
print(cost_drone(1.5))

def cheapest_shipping(weight):
  if cost_ground(weight) < cost_drone(weight) and cost_ground(weight) < cost_premium_ground:
    return "Groundshipping is cheaper. It will cost $" + str(cost_ground(weight)) + "."
  elif cost_drone(weight) < cost_ground(weight) and cost_drone(weight) < cost_premium_ground:
    return "Drone shipping is cheaper. It will cost $" + str(cost_ground(weight)) + "."
  elif cost_premium_ground < cost_ground(weight) and cost_premium_ground < cost_drone(weight):
    return "Flat rate shipping is cheaper. It will cost $" + str(cost_premium_ground) + "."

print(cheapest_shipping(4.8))



