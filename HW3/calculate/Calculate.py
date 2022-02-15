import math
R =8 
r =1
a =4

t = 0.0
xcord=-118.28546825916472
ycord=34.02073083708312
f = open("output.txt", "w+")

while(t < math.pi*16):
    x = (R+r)*math.cos((r/R)*t) - a*math.cos((1+r/R)*t)
    y = (R+r)*math.sin((r/R)*t) - a*math.sin((1+r/R)*t)
    f.write(str(0.0001*x+xcord) + "," + str(0.0001*y+ycord)+",17\n")
    t += 0.01
f.close()