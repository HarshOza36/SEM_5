import socket
s = socket.socket()
host = socket.gethostname()
port = 1234
s.bind((host, port))
s.listen(5)
while True:
    print ('Now looking to accept the client')
    c, addr = s.accept()
    print ('Got connection from:', addr)
    b=input("Enter the message to send!")
    b1=str.encode(b)
    c.send(b1)
    text=c.recv(1024)
    print(text)
    c.close()
    
