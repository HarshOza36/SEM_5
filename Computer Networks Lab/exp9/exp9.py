ip=input("Enter the IP Address:")
iplt=list(ip.split("."))
for i in range(0, len(iplt)): 
    iplt[i] = int(iplt[i])
if iplt[0] in range(0,127):
      print("The IP address belongs to class A")
      print("Default mask:255.0.0.0")
      print("The Network Address:",iplt[0],".0.0.0")
      print("The Broadcast Address:","0.",iplt[1],".",iplt[2],".",iplt[3])
elif iplt[0] in range(128,191):
      print("The IP address belongs to class B")
      print("Default mask:255.255.0.0")
      print("The Network Address:",iplt[0],".",iplt[1],".0.0")
      print("The Broadcast Address:",".0.0.",iplt[2],".",iplt[3])
elif iplt[0] in range(192,223):
      print("The IP address belongs to class C")
      print("Default mask:255.255.255.0")
      print("The Network Address:",iplt[0],".",iplt[1],".",iplt[2],".0")
      print("The Broadcast  Address:","0.0.0.",iplt[3])
elif iplt[0] in range(224,239):
      print("The IP address belongs to class D")
      print("Default mask:Not defined")
      print("The Network Address:",iplt[0],".",iplt[1],".",iplt[2],".",iplt[3])
elif iplt[0] in range(240,254):
      print("The IP address belongs to class E")
      print("Default mask:Not defined")
else:
      print("Wrong input")
