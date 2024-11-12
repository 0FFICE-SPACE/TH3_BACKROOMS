define :d_main_melody do |x|
  live_loop :main_meldy do
    with_synth :dsaw do
      s = play scale(x, :major_pentatonic, num_octaves: 2).tick, release: 0.32, amp: rand(1.2)
      control s, pan: rdist(1,0) if (spread 7, 13).tick
      control s, cutoff: rdist(30,80) if (spread 3, 8).tick
    end
    sleep 0.125
  end
end

live_loop :main do
  x = [:Eb2,:Ab2,:Eb2,:Db2].tick #change this chord progression
  d_main_melody x
  sleep 4
end
