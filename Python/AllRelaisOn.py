#! /usr/bin/python
# -*- coding: utf-8 -*-

import serial
import time

ser = serial.Serial('/dev/ttyUSB0',9600)
ser.write("255\r")
print ("ALL RELAIS: ON!")
time.sleep(10)
ser.write("0\r")
print ("ALL RELAIS: OFF!")
ser.close()
print ("ALL GOOD, EXIT!")

# ...quick and dirty by "Wir-sind-die-Matrix.de"
