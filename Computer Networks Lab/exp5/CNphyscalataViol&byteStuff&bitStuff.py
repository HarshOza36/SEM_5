def byteStuff(flag, esc, ds):
    x = ds.replace (esc, esc*2)
    y = x.replace (flag, esc+flag)
    print( flag +" " +y +" "+ flag )
    
def bitStuff(s):
    flag="01111110"
    s1=[]
    count=0
    c=0
    sL=list(s)
    a1=len(sL)   
    for i in range(0,a1):
        if(sL[i]=='1'):
            count+=1
            if(count==5):
                sL.insert(i+1,'0')
                continue
        else:
            count=0
    s3="".join(sL)
    print(flag +" "+ s3 + " " +flag)
    
#PDV START     
s=input("Enter the datastream:")
a=len(s)
list(map(int,s))
b=[]
for i in range(0,a):
    if(s[i]=='0'):
        b.append('L')
    else:
        b.append('H')
str2="".join(b)
print(str2)
#PDV END

f=input("Enter Flag byte:")
e=input("enter escape character:")
byteStuff(f,e,s)
bitStuff(s)
