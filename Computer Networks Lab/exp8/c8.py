import socket
HOST = '192.168.0.106'
PORT = 65432
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.connect((HOST,PORT))
e = input('Enter equation: ')
sock.sendall(bytes(e, 'utf-8'))
print(str(sock.recv(1024), 'utf-8'))
