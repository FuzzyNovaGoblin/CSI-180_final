import socket
import _thread
import sys
import subprocess
import signal
import os
import json
import time

PORT = 38999
HOST = "192.168.7.215"
FUNC_PATH = "/root/functions"
SEC_PER_OZ = 9.611366846
SEC_PER_HOT_OZ = 25
HOT_WAIT = 5

def on1():
    os.system("/root/funcs/1on.sh")
def off1():
    os.system("/root/funcs/1off.sh")

def on2():
    os.system("/root/funcs/2on.sh")
def off2():
    os.system("/root/funcs/2off.sh")

def on3():
    os.system("/root/funcs/3on.sh")
def off3():
    os.system("/root/funcs/3off.sh")

def on4():
    os.system("/root/funcs/4on.sh")
def off4():
    os.system("/root/funcs/4off.sh")




def move_hot(oz):
    on4()
    time.sleep(HOT_WAIT)
    time.sleep(SEC_PER_HOT_OZ*oz)
    off4()
    print("hot done:",oz)

def move_cold(oz):
    og_oz = oz
    #hot_wait_time = oz * SEC_PER_HOT_OZ + HOT_WAIT
    if oz > 4:
        on1()
        time.sleep(SEC_PER_OZ * 4)
        off1()
        
    else:
        on1()
        time.sleep(SEC_PER_OZ * oz)
        off1()
    oz -= 4
    _thread.start_new_thread(move_hot, (og_oz,))
    while oz > 0:
        if oz > 4:
            on1()
            time.sleep(SEC_PER_OZ * 4)
            off1()
            time.sleep(SEC_PER_HOT_OZ*4)
        else:
            on1()
            time.sleep(SEC_PER_OZ * oz)
            off1()
            time.sleep(SEC_PER_HOT_OZ*oz)
        oz -= 4
    print("cold done")
    
    

def handle_html(inval):
    print("html")
    print(inval)
    if inval == "/1on":
        on1()
    elif inval == "/1off":
        off1()
    return


def handle_tcp(inval):
    print("tcp")
    print("recv:", inval)
    print(inval)
    if inval[0:4] == "make":
        data = inval.split(" ")
        oz = float(data[1])
        _thread.start_new_thread(move_cold, (oz,))
        return ("1 " + str(SEC_PER_HOT_OZ * oz + SEC_PER_OZ * 4)).encode("utf-8")
        
        
    elif inval == "1on":
        os.system("/root/funcs/1on.sh")
    elif inval == "1off":
        os.system("/root/funcs/1off.sh")

    elif inval == "2on":
        os.system("/root/funcs/2on.sh")
    elif inval == "2off":
        os.system("/root/funcs/2off.sh")

    elif inval == "3on":
        os.system("/root/funcs/3on.sh")
    elif inval == "3off":
        os.system("/root/funcs/3off.sh")

    elif inval == "4on":
        on4()
    elif inval == "4off":
        off4()
    else:
        return b'0'
    return b'1'


def handle(client, addr):
    
    data = client.recv(4069).decode("utf-8")
    html = False
    if data == "KILL":
        off1()
        off2()
        off3()
        off4()
        
        sock.close()
        _thread.interrupt_main()
        sys.exit()
        print("KILL")
    
    elif len(data) >= 3 and data[0:3] == "GET":
        html = True
        data = data.split('\n')[0][4:-10]
        client.sendall(handle_html(data))
    else:
        client.sendall(handle_tcp(data))
                   
    print("close:", client)
    client.close()
    

if __name__ == "__main__":
    
    
    boot_bool = True
    while boot_bool:
        try:
            sock = socket.socket()
            sock.bind((HOST, PORT))
            sock.listen(5)
            boot_bool = False
        except:
            time.sleep(5)

    os.system("echo 2 > /sys/class/gpio/export;echo 3 > /sys/class/gpio/export;echo 4 > /sys/class/gpio/export;echo 17 > /sys/class/gpio/export;echo out > /sys/class/gpio/gpio2/direction;echo 1 > /sys/class/gpio/gpio2/value;echo out > /sys/class/gpio/gpio3/direction;echo 1 > /sys/class/gpio/gpio3/value; echo out > /sys/class/gpio/gpio4/direction;echo 1 > /sys/class/gpio/gpio4/value;echo out > /sys/class/gpio/gpio17/direction; echo 1 > /sys/class/gpio/gpio17/value;")

            
    while True:
        print("waiting...")
        try:
            client, addr = sock.accept()
            _thread.start_new_thread(handle, (client, addr))
        except:
            sock.close()
            print("close")
            break

    



def signal_handler(sig, frame):
    sock.close()
    print("close")
    exit(0)


#while True:
#    pass
#    print("waiting...")
#    try:
#        client, addr = sock.accept()
#        _thread.start_new_thread(handle, (client, addr))
#    except:
#        sock.close()
#        print("close")
#        break
