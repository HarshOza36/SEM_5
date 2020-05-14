import os
import sys

import logging
def run(runfile):
  with open(runfile,"r") as rnf:
    exec(rnf.read())
def close_restart(self):

    choice = input('Do you want to restart the program? Please select \'Y\' if you would like to restart.')

    if choice == 'Y' or choice == 'y':
        print('Restarting now...')
        os.execl(sys.executable, sys.executable, *sys.argv)

    else:
        print('Thank you for using the tool!')
        print('The program will close in 10s...')
        time.sleep(10)
import socket
s = socket.socket()
host = socket.gethostname()
port = 1234
s.connect((host, port))
while True:
        
        text = s.recv(1024)
        print (text)
        print ('Information received')
        bb2=input("Enter the message to send!")
        b2=str.encode(bb2)
        s.send(b2)
        s.close()
        run("tcpclient.py")
        '''close_restart(s)'''

        
