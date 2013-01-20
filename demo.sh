#!/bin/sh
cd snoozify
sudo python off_listener.py &
bundle exec foreman start
