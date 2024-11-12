# Welcome to Sonic Pi
use_bpm 130

live_loop :test do
  sample :arovane_beat_c
  sleep sample_duration :arovane_beat_c
end

live_loop :ambience do
  sample :vinyl_hiss
  sleep sample_duration :vinyl_hiss, amp: 1.3
end

define :d_main_melody do |x|
  live_loop :main_meldy do
    with_synth :dsaw do
      s = play scale(x, :major_pentatonic, num_octaves: 2).tick, release: 0.32, amp: rand(1.2)
      control s, pan: rdist(1,0) if (spread 7, 13).tick
      control s, cutoff: rdist(30,80) if (spread 3, 8).tick
    end
    sleep 0.25
  end
end

define :d_bass do |x|
  
  live_loop :chords do
    with_synth :subpulse do
      play x, release: 0.32, amp: 0.9 if (spread 6, 8).tick
    end
    sleep 0.25
  end
end

live_loop :main do
  x = [:Eb2,:Ab2,:Eb2,:gb2].tick
  sync :test
  d_main_melody x
  d_bass x
  sleep 4
  
end