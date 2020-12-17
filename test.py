import json
#from collections import OrderedDict
#import pprint

f = open('users.json', 'r')
users = json.load(f)

#print(users)

userraw = []

for line in open(users):
    userraw.append(users['id'],users['time'],users['score'])



