a=int(input("enter the capacity 1:"))
b=int(input("enter the capacity 2:"))
c=int(input("enter the goal:"))
x=int(input("enter x:"))
y=int(input("enter y:"))
while True:
    rno=int(input("enter the rule no:"))
    if rno==1:
        if x<a:
            x=a
    if rno==2:
        if y<b:
            y=b
    if rno==3:
        if x>0:
            x=0
    if rno==4:
        if y>0:
            y=0
    if rno==8:
        if x+y>a and y>0:
            x,y=a,y-(a-x)
    if rno==7:
        if x+y>=b and x>0:
            x,y=x-(b-y),b
    if rno==6:
        if x+y<=a and y>0:
            x,y=x+y,0
    if rno==5:
        if x+y<=b and x>0:
            x,y=0,x+y
    print("x=",x)
    print("y=",y)
    if(x==c):
        print("the result is a goal state")
        break
    
    
             
    

