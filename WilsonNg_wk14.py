#!/usr/bin/env python
# coding: utf-8

# In[69]:


# Task 01 https://github.com/is210-spring-2017/is210-week-14-warmup

import pet


# In[81]:


class Dog(pet.Pet):
        
    def __init__(self, has_shots=False, **kwargs):
        super(pet.Pet, self).__init__()
        self.has_shots = has_shots
        
        for key, value in kwargs.items():
           setattr(self, key, value)


# In[326]:


buddy = Dog(has_shots=True, color = 'black', age = 3, name = 'Buddy')


# In[327]:


buddy.color


# In[328]:


buddy.has_shots


# In[329]:


buddy.age


# In[330]:


buddy.name


# In[ ]:





# In[249]:


# Task 02
from data import FRUIT


# In[318]:


def get_cost_per_item(shoplist):
    new_dict = {item: shoplist[item] * FRUIT[item] 
                for item in shoplist 
                if item in FRUIT.keys() and shoplist.keys()}
    return new_dict

# In one line, use a dictionary comprehension to:
# Iterate over the shoplist
# Filter results for shoplist to only return keys found in FRUIT
# Multiply the number of units from shoplist by the price of the units found in FRUIT. 
# (These are the respective values of each dictionary).
# Return a new dictionary keyed by the name of the fruit with the total cost per-item reflected.


# In[319]:


shopdict = {
    'Black Plum':6,
    'Red Plum': 5,
    'Grenade Pluot': 3}


# In[320]:


get_cost_per_item(shopdict)


# In[324]:


def get_total_cost(shoplist):
    new_dict = sum(get_cost_per_item(shopdict).values())
    return new_dict


# In a single-line:
# Uses get_cost_per_item() to retrieve the per-item costs.
# Sums the values of the resultant dictionary together.
# Tip
# Check out the sum() function to help with this. There's also a helpful dictionary built-in function you might want to use.
# Returns the total cost.


# In[325]:


get_total_cost(shopdict)


# In[ ]:




