from sys import argv
import time

with open(".atalanta.txt", "r") as file:
    fileLines = file.readlines()

newMatchday = f'{argv[1]} {argv[2]} - {argv[3]}\n'

matchdays = []
for i in fileLines:
    matchdays.append(i[0:10])

epochMatchdays = []
pattern = "%d-%m-%Y"
for i in matchdays:
    epochDate = int(time.mktime(time.strptime(i, pattern)))
    epochMatchdays.append(epochDate)
epochArgv = int(time.mktime(time.strptime(argv[1], pattern)))

nearestInt = min(epochMatchdays, key=lambda x:abs(x - epochArgv))
indexFirstMatch = epochMatchdays.index(nearestInt)

fileLines.insert((indexFirstMatch + 1), newMatchday)

with open(".atalanta.txt", "w") as file:
    file.writelines(fileLines)
