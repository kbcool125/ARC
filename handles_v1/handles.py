import serial
import sys
import pygame
import os
from pygame.locals import *

optionNames = ['manual', 'automated', 'debug']
options = {}
for name in optionNames:
    options[name] = False

usbDevice = '/dev/ttyUSB0'
baud = 9600

pygame.init()
screen = pygame.display.set_mode((150,150))
pygame.display.set_caption("Handles Control Center (HCC)")
#ser = serial.Serial(usbDevice, baud, timeout=1)
#ser.open()

os.system("clear")
print("Welcome to the Handles Control Center (HCC)".center(10))
print("Initially you can use this script to control Handles using the keyboard.".center(10))
print("Later on, this script will control the autonomous functions of Handles".center(10))

if options['manual']:
	print("Use letters a, b, c, d, e, f, g, h, i, j, k, and l ".center(10))
	print("to send the correct serial commands to the arduino".center(10))

if options['automated']:
	print("Handles is now in automated mode.".center(10))
	print("After a short boot-up sequence the robot will".center(10))
	print("scan for motion and react accordingly.".center(10))

while True:
	for event in pygame.event.get():
		if event.type == pygame.QUIT:
#				ser.close()
				sys.exit()		
		if event.type == pygame.KEYDOWN:
			if options['manual']:
				if event.key == pygame.K_a:
					if options['debug']:
						print("Electrical Noise")
#					ser.write("a")
				if event.key == pygame.K_b:
					if options['debug']:
						print("Random Cyberman Soundbyte")
#					ser.write("b")
				if event.key == pygame.K_c:
					if options['debug']:
						print("LED 1 on")
#					ser.write("c")
				if event.key == pygame.K_d:
					if options['debug']:
						print("LED 2 on")
#					ser.write("d")	
				if event.key == pygame.K_e:
					if options['debug']:
						print("LED 3 on")
#					ser.write("e")
				if event.key == pygame.K_f:
					if options['debug']:
						print("LED 4 on")
#					ser.write("f")
				if event.key == pygame.K_g:
					if options['debug']:
						print("LED 1 off")
#					ser.write("g")
				if event.key == pygame.K_h:
					if options['debug']:
						print("LED 2 off")
#					ser.write("h")
				if event.key == pygame.K_i:
					if options['debug']:
						print("LED 3 off")
#					ser.write("i")
				if event.key == pygame.K_j:
					if options['debug']:
						print("LED 4 off")
#					ser.write("j")
				if event.key == pygame.K_k:
					if options['debug']:
						print("Select eye colour")
#					ser.write("k")
				if event.key == pygame.K_l:
					if options['debug']:
						print("Eye animation 1")
#					ser.write("l")
				if event.key == pygame.K_m:
					if options['debug']:
						print("Eye animation 2")
#					ser.write("l")
				if event.key == pygame.K_n:
					if options['debug']:
						print("Eye animation 3")
#					ser.write("l")
				if event.key == pygame.K_o:
					if options['debug']:
						print("Eyes off")
#					ser.write("l")
				if event.key == pygame.K_ESCAPE:
					print("Terminating Program")
#					ser.close()
					sys.exit()