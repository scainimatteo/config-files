from datetime import date
from sys import argv
import time

datepattern = "%d-%m-%Y"
today = date.today()
today = today.strftime("%d-%m-%Y")
epochToday = int(time.mktime(time.strptime(today, datepattern)))

f = open(".atalanta.txt", "r")
index = 0
matches = []
dateMatches = []
epochDates = []

for i in f:
    if (i != "\n") and ("<!--" not in i):
        matches.append(i)
        dateMatches.append(i)
        matches[index] = matches[index][:-1]
        dateMatches[index] = dateMatches[index][0:10]
        epochDates.append(int(time.mktime(time.strptime(dateMatches[index], datepattern))))
        index += 1
f.close()

nearestInt = min(epochDates, key=lambda x:abs(x - epochToday))
indexFirstMatch = epochDates.index(nearestInt)

if nearestInt < epochToday:
    indexFirstMatch += 1

howManyMatches = int(argv[1]) if len(argv) > 1 else 3

for i in range(indexFirstMatch, indexFirstMatch + howManyMatches):
    if i < len(matches):
        print(f' {matches[i]}')
