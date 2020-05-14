str1=input("Enter Data Stream>>>>")
n=int(input("Enter the number of Frames>>>>"))
a=[]
count=0
header=0
sumf=0
for i in range(0,n):
    b=input("Enter Count for Frame %d>>>" %(i+1))
    sumf=sumf+int(b)
    a.append(b)
x=a[0]
list1=list(str1)
list1.insert(0,x)
flag=int(a[0])

for i in range(0,n):
    x=a[i+1]
    list1.insert(flag,' ')
    list1.insert(flag+1,x)
    header=header+1
    if header==n-1:
        flag=sumf+n-1
        list1.insert(flag,' ')
        break
    else:
        flag=flag+1+int(a[i+1])
str2="".join(list1)
print("Stuffed Data Stream with {} Frames and Unframed Data>>>".format(n),str2)

