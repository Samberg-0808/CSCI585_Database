import math
R =8 
r =1
a =4

t = 0.0
xcord=-118.28546825916472
ycord=34.02073083708312
f = open("output.txt", "w+")
f.write("[\n")
while(t < math.pi*16):
    x = (R+r)*math.cos((r/R)*t) - a*math.cos((1+r/R)*t)
    y = (R+r)*math.sin((r/R)*t) - a*math.sin((1+r/R)*t)
    f.write("{\n")
    f.write("\t\"loc\":["  + str(0.0001*y+ycord) +"," + str(0.0001*x+xcord) + "]\n")
    f.write("},\n")
    t += 0.1
f.write("]\n")
f.close()