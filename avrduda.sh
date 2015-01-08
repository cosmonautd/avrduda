#/bin/bash
#@uthor: dave

avr-gcc -mmcu=atmega8 -Os $1 -o obj.o
avr-objcopy -j .text -j .data -O ihex  obj.o hx.hex
sudo avrdude -c usbasp -p m8 -P usb -U flash:w:hx.hex
rm obj.o hx.hex
