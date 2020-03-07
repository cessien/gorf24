# gorf24
A wrapper library written in go for working with the nrf24l01 type radio transceiver.

## Installing:

1) install and set up basic developer tools, git as well as golang on your RPi
   e.g. on Arch ARM:
   $> `sudo pacman -S base-devel git go`
   
   be sure to export GOPATH and add $GOPATH/bin to your PATH; e.g.
     $> `mkdir ~/mygo`
     $> `echo "export GOPATH=~/mygo" >> ~/.bashrc`
     $> `echo "export PATH=$PATH:$GOPATH/bin" >> ~/.bashrc`
   
   log off and on again for GOPATH changes to take effect
   
2) fetch gorf24 using 
   $> `go get github.com/galaktor/gorf24` (you will get an "ld" type error; ignore!)
3) $> `cd $GOPATH/src/github.com/galaktor/gorf24`
4) $> `chmod +x build.sh`
5) $> `sudo ./build.sh`
6) include gorf24 in your golang source code as usual, i.e. `import "github.com/cessien/gorf24"`
7) Accessing GPIO on Rpi requies elevated permissions, so it makes sense to build normally (`go build`)
   then run the executable as sudo, i.e.
   $> `go build mycode.go`
   $> `sudo ./mycode`
   If you do not use sudo, you will get segfaults and panics

(Tested on an overclocked (900 MHz) Model A RPi running Arch Linux for Rpi/ARM, RPi zero W, and RPi 3 Model B+)

Note that this is project is in progress, and the golang or ansi C wrapper haven't been fully tested yet.
Basic send/receive testing has occured, but many functions might have bugs.
Please log any issue you might find and I will try to address it when I get a chance!
Or even better, fork and contribute, that would be much appreciated.


## TODOS
* Makefiles instead of shell scripts
* maybe better way of installing via go get?
* more testing of correct wrapping, data types etc
* branch that includes verified-working snap of RF24-rpi
* download with RPi binaries for armv6?


##  COPYRIGHT AND LICENSE

Copyright 2013, Raphael Estrada
Copyright 2020, Charles Essien

gorf24 is licensed under the MIT license.
You should have received a copy of the MIT License along
with gorf24 (file "LICENSE"). If not, see 

<http://opensource.org/licenses/MIT>


**************************
  THE GIANTS' SHOULDERS
**************************

NOTE: gorf24 dynamiclly links to the C++ RF24 library for Raspberry
Pi by Stanley Seow. At the time gorf24 was created, Seow's software
had no apparent license included. The license for gorf24 described
here applies exclusively to the software provided as part of gorf24,
but does not extend to Seow's RF24 software.

https://github.com/stanleyseow/RF24

Seow's work is stronly derived from maniacbug's original RF24 library.
Much kudos to maniacbug for the great work.
https://github.com/maniacbug/RF24
http://maniacbug.wordpress.com/


