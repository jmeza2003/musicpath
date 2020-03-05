use_bpm 80

i= 0
beats = [:b3, :g3, :g3, :b2, :a2, :a2, :b2, :a2, :a3, :f3, :b3, :g3, :g3, :b3, :g3, :g2, :b2, :g2, :a2, :g3, :e3, :e3, :g3, :e3, :e3, :g3, :c, :c, :d3, :c, :d3, :c, :g3, :c]
y= 0
sleeps = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 3.5, 0.5, 0.5, 0.5, 0.5, 1, 0.25, 0.25, 0.5, 4,0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.75, 0.25, 0.5, 0.5, 0.25, 1.5, 0.5, 0.25, 0.5]
use_synth:piano
intro="C:/Users/jesus_meza/Desktop/The Numbers, Mason..wav"
outro ="C:/Users/jesus_meza/Desktop/penatgon.wav"
a="C:/Users/jesus_meza/Desktop/p1911pt2.wav"
b= "C:/Users/jesus_meza/Desktop/ak47pt2.wav"
c= "C:/Users/jesus_meza/Desktop/tompt2.wav"
t= 4
#intro and 1st measure-------------------------------------------------------------------
sample intro
sleep 8
1.times do
  sleep 3
  play :d3
  sleep 1
end
#array-------------------------------------------------------------------------------------
live_loop:my_loop do
  34.times do
    play beats[i]
    sleep sleeps[y]
    
    i= i+1
    y= y+1
  end
  stop
end
#Randomness------------------------------------------------------------------------------
live_loop :randomness do
  1.times do
    sleep 5.5
    sample choose([a, b, c])
    sleep 7.5
    sample choose([a, b, c])
    sleep 2
    sample choose([a, b, c])
  end
  stop
end
#paramaterized function-----------------------------------------------------------------
define :drums do |s|
  sample :drum_heavy_kick
  sample :drum_snare_soft
  sleep s
end
drums 0.5
drums 0.5
drums 0.5
drums 6.5
drums 0.5
drums 0.5
drums 0.5
drums 0.5
drums 1
drums 0.25
drums 0.25
drums 0.5
drums 4
drums 0.5
drums 0.5
drums 0.5
drums 0.5
drums 0.5
drums 0.5
drums 0.75
drums 0.25
drums 0.5
drums 0.5
drums 0.25
drums 1.5
drums 0.5
drums 0.25
drums 0.5
#outro-----------------------------------------------------------------------------------
live_loop:tom_loop do
  4.times do
    sample outro, amp: t
    sleep 4
    t = t - 1
  end
  stop
end

print sample_duration "C:/Users/jesus_meza/Desktop/penatgon.wav"
