snoozipi
========

A spotify-powered alarm clock on my raspberry pi.

Hack at Music Hack Stockholm 2013.

## Getting started with playing Spotify on your Pi. (Won't give you an alarm clock…)

### Things you need

- SD card (min. 4GB recommended)
- a mini speaker or headphones
- Spotify Premium subscription (Unlimited is, ironically, not enough)
- (if you're on a Macbook Air, don't forget your Ethernet USB adapter)


### Prepare the OS and connect

- Download the "soft-float" debian http://www.raspberrypi.org/downloads
- Copy the image onto your SD card http://elinux.org/RPi_Easy_SD_Card_Setup
- Connect the Pi to your laptop via the ethernet cable http://interlockroc.org/2012/12/06/raspberry-pi-macgyver/ (I'd skip setting up VNC, you can do that later when you really need it)
- ssh into your Pi (user:  pi, password: raspberry)


### Check sound is working

- Plug in your speaker or headphones
- `aplay /usr/share/sounds/alsa/Front_Center.wav` should play a voice saying "front, center"
- `alsamixer` is useful for turning volume up & down
- Any sound issues, look here: http://elinux.org/R-Pi_Troubleshooting#Sound


### Play a Spotify playlist

- Get Mopidy (http://www.mopidy.com/), installation guide: http://docs.mopidy.com/en/latest/installation/raspberrypi/#how-to-for-debian-7-wheezy
- Start the mopidy server with `mopidy`
- Control it with mpc, which you get via apt: apt-get install mpc
- There's also ncmpcpp, a ncurses UI, which can help test your setup.

