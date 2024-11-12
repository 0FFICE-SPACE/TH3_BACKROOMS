use_bpm 130

define :d_ply_beat do  |x|
  live_loop :ply_beat do
    with_synth :sc808_snare do
    play rrand_i(45, 67), amp: rand(0.8), attack: rand(0.1), attack_level: rand(0.7), release: rand(0.3) if (spread rrand_i(1, 7), 7).tick end
    sample :hat_bdu, amp: rand(1.5), release: rand if (spread rrand_i(1, 12), 12).look
    sample :bd_klub, amp: 1.2 if (spread rrand_i(1, 6), 8).look
    sleep x
  end
end

define :d_atmosphere do
  live_loop :atmosphere do
    sample :vinyl_hiss, amp: 0.85, rate: [-1,1].choose
    sleep sample_duration :vinyl_hiss
  end
end


/main/
live_loop :main do
  A = [0.25, 0.25].tick # play around with these values or the bpm up top
  d_ply_beat A
  print A
  
  sleep 36
end
d_atmosphere


