# Welcome to Sonic Pi v3

use_bpm 135
use_synth :dtri

intro= "C:/Users/jesus_meza/Documents/damn_son.wav"
idk= "C:/Users/jesus_meza/Desktop/Fortnite Death.wav"
complete= "C:/Users/jesus_meza/Desktop/price.wav"
music= [:g5, :g5, :fs5, :f5, :e5, :e5, :d5, :d5, :b4, :b4, :b4, :b4, :b4, :d5, :d5, :d5,]
x=0
y=3
#intro------------------------------------------
sample intro
sleep 6.5
#array------------------------------------------
live_loop:my_loop do
  5.times do
    15.times do
      play music[x], amp: y
      sleep 0.5
      
      x = x + 1
      y = y - 0.04
      
      print x
      print y
    end
    print "restarting"
    x = 0
  end
  stop
end

#samples-loops---------------------------------
live_loop :my_loop2 do
  19.times do
    sample :drum_heavy_kick
    sleep 2
  end
  stop
end

live_loop :funy_loop do
  4.times do
    sleep 8
    sample idk
  end
  stop
end

live_loop :funy_lol do
  4.times do
    sleep 10
    sample complete
  end
  stop
end
