#!/usr/bin/env python

import RPi.GPIO as GPIO
from time import sleep
import sys
import os
import subprocess

lastfrequency = 0
frequency = 441000
#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
sleep(1)
p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/44100.yml"])
sleep(1)
#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
sleep(1)

GPIO.setmode(GPIO.BCM)
INPUT0 = 17
INPUT1 = 27
INPUT2 = 22
GPIO.setup(INPUT0, GPIO.IN)
GPIO.setup(INPUT1, GPIO.IN)
GPIO.setup(INPUT2, GPIO.IN)

def freqChange(channel):
	sleep(1)
	global lastfrequency
	global p
	in2 = GPIO.input(INPUT2)
	in1 = GPIO.input(INPUT1)
	in0 = GPIO.input(INPUT0)
	if (not in2 and not in1 and in0) : 
		frequency = 32000
		if (frequency != lastfrequency) :
			os.system('echo "Frequency Changed to: 32kHz"')
			lastfrequency = frequency
			p.terminate()
			returncode = p.wait()
			#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
			sleep(1)
			p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/32000.yml"])
			sleep(1)
			#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
			sleep(1)
	elif (not in2 and in1 and not in0) : 
		frequency = 44100
		if (frequency != lastfrequency) :
			os.system('echo "Frequency Changed to: 44.1kHz"')
			lastfrequency = frequency
			p.terminate()
			returncode = p.wait()
			#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
			sleep(1)
			p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/44100.yml"])
			sleep(1)
			#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
			sleep(1)
	elif (not in2 and in1 and in0) : 
		frequency = 48000
		if (frequency != lastfrequency) :
			os.system('echo "Frequency Changed to: 48kHz"')
			lastfrequency = frequency
			p.terminate()
			returncode = p.wait()
			#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
			sleep(1)
			p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/48000.yml"])
			sleep(1)
			#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
			sleep(1)
	elif (in2 and not in1 and not in0) : 
		frequency = 88200
		if (frequency != lastfrequency) :
			os.system('echo "Frequency Changed to: 88.2kHz"')
			lastfrequency = frequency
			p.terminate()
			returncode = p.wait()
			#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
			sleep(1)
			p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/88200.yml"])
			sleep(1)
			#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
			sleep(1)
	elif (in2 and not in1 and in0) : 
		frequency = 96000
		if (frequency != lastfrequency) :
			os.system('echo "Frequency Changed to: 96kHz"')
			lastfrequency = frequency
			p.terminate()
			returncode = p.wait()
			#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
			sleep(1)
			p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/96000.yml"])
			sleep(1)
			#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
			sleep(1)
	elif (in2 and in1 and not in0) : 
		frequency = 176400
		if (frequency != lastfrequency) :
			os.system('echo "Frequency Changed to: 176.4kHz"')
			lastfrequency = frequency
			p.terminate()
			returncode = p.wait()
			#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
			sleep(1)
			p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/176400.yml"])
			sleep(1)
			#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
			sleep(1)
	elif (in2 and in1 and in0) : 
		frequency = 192000
		if (frequency != lastfrequency) :
			os.system('echo "Frequency Changed to: 192kHz"')
			lastfrequency = frequency
			p.terminate()
			returncode = p.wait()
			#o = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP Internal Clock"])
			sleep(1)
			p = subprocess.Popen(["/etc/camilladsp/camilladsp","/etc/camilladsp/192000.yml"])
			sleep(1)
			#q = subprocess.Popen(["/usr/bin/amixer", "-c", "USBStreamer", "sset", "miniDSP Clock Selector Clock Source", "miniDSP TOSLINK Clock"])
			sleep(1)

GPIO.add_event_detect(INPUT0, GPIO.BOTH, callback=freqChange, bouncetime=100)
GPIO.add_event_detect(INPUT1, GPIO.BOTH, callback=freqChange, bouncetime=100)
GPIO.add_event_detect(INPUT2, GPIO.BOTH, callback=freqChange, bouncetime=100)
freqChange(0)

try:
	while True:
		sleep(10)
except KeyboardInterrupt:
	p.terminate()
	returncode = p.wait()
	GPIO.cleanup()
