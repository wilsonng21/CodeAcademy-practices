#Task 01

def fibonacci(maxint):
    a, b = 0, 1
    while a < maxint:
        print(a)
        a, b = b, a+b
     
#Task 02

def lexicographics(to_analyze):
    minWords = 1000000
    maxWords = 0
    avgWords = 0.0

    lines = to_analyze.split('\n')          #split to_analyze into separate lines and storing into lines variable
    for line in lines:                      #for loop to loop through each line in lines
        words = line.split()                #after splitting to_analyze into separate lines, this splits lines into words.
        length = len(words)                 #return number of items in words and stored into length
        minWords = min(length, minWords)    #compares length and minWords, returning smallest value.
        maxWords = max(length, maxWords)    #does the opposite as above
        avgWords = avgWords + length        #this stores the total number of objects(words) into avgWords for the next step
    avgWords = avgWords / len(lines)        #total dividing the number of lines to find average number of words in the lines.
    return (minWords, maxWords, avgWords)   #() returns the values into a tuple
    
