import socket
HOST = '192.168.0.106'
PORT = 65432
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.bind((HOST, PORT))
sock.listen(1)
con, client_address = sock.accept()
ip = str(con.recv(1024), 'utf-8')
ip = ip.split(" ")
val = 0;
if(ip[2] == '+'):
    val = int(ip[0]) + int(ip[1])
    print(ip[0],"+",ip[1],"=",val)
elif(ip[2] == '-'):
    val =int(ip[0]) - int(ip[1])
    print(ip[0],"-",ip[1],"=",val)
elif(ip[2] == '*'):
    	val = int(ip[0]) * int(ip[1])
    	print(ip[0],"*",ip[1],"=",val)
elif(ip[2] == '/'):
    val = int(ip[0]) / int(ip[1])
    print(ip[0],"/",ip[1],"=",val)
con.send(bytes(str(val), 'utf-8'))
