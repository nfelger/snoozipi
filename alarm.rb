#!/usr/bin/env ruby

def play
  `mpc clear`
  `mpc load "tunes"`
  `mpc shuffle`
  `mpc play`
end

while true
  start = Time.now

  alarms = IO.readlines(File.dirname(__FILE__) + '/alarms')
  STDERR.puts "Alarms found:\n#{alarms.inspect}"

  STDERR.puts "Current time: #{Time.now.strftime('%H%M%S%L').inspect}"
  if alarms.any?{|a| a.strip == Time.now.strftime('%H%M')}
    STDERR.puts 'RRRRRRRRRRRRRRRRRRR'
    system("cat /dev/null > #{File.dirname(__FILE__)}/alarms")
    play
  end

  elapsed = Time.now - start
  sleep([10 - elapsed, 0].max)
end
