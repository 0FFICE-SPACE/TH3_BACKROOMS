define :random_notes do
  use_synth :blade
  [1,1,2,3,5,8].tick.times do
    play choose(chord(:D3, :minor)), release: 0.1, sustain: 0.1
    sample :elec_hollow_kick
    sleep 0.1
    play choose(chord(:D2, :minor)), release: 0.14
    sleep 0.14
  end
end
define :random_notes2 do
  use_synth :square
  [1,1,2,3,5,8].tick.times do
    play choose(chord(:D2, :minor)), release: 0.1, sustain: 0.1, amp: 0.3
    sleep 0.2
    play choose(chord(:D2, :minor)), release: 0.14, amp: 0.3
    sleep 0.28
  end
end
live_loop :bleep do
  random_notes
end

live_loop :bl00p do
  random_notes2
end


live_loop :doom do
  use_synth :dark_ambience
  if one_in 8
    play choose(chord(:D5, :minor)), release: 12, attack: 3, amp: 1.1, rate: rrand(-1,1)
    sample :vinyl_hiss
    
  else
    
    play choose(chord(:D3, :minor)), release: 12, attack: 3, amp: 1.1, rate: rrand(-1,1)
  end
  sleep 2
end