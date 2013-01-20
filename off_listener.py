import sys
import select
import tty
import termios
import time
import os
from evdev import InputDevice, categorize, ecodes
 
if __name__ == '__main__':
 
    dev = InputDevice('/dev/input/event1')
 
    for event in dev.read_loop():
        if event.type == ecodes.EV_KEY:
            key_pressed = str(categorize(event))
            if 'KEY_SPACE' in key_pressed:
                print "stopping"
                os.system('mpc stop')       
