import socket
def client_program():
    host = socket.gethostname()
    port = 5000 
    client_socket = socket.socket()  
    client_socket.connect((host, port))  
    message = input('Enter bye to exit, Enter C to continue>>>')
    n1=int(input('Enter number 1>>>'))
    n2=int(input('Enter number 2>>>'))
    print(" operations are ADD , SUB, MUL, DIV\n")
    ops=input("Enter a operation from Above>>>>")
    while message.lower().strip() != 'bye':
        client_socket.send(b'n1')
        client_socket.send(b'n2')
        data = client_socket.recv(1024).decode()  
        print('Received from server: ' + data)  
        message = input('Enter a message>>>')  
    client_socket.close()  
if __name__ == '__main__':
    client_program()
