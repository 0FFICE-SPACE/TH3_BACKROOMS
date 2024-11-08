use_bpm 127

define :d_ply_beat do  |x|
  live_loop :ply_beat do
    with_synth :sc808_snare do
    play rrand_i(45, 67), amp: rand(0.8), attack: rand(0.1), attack_level: rand(0.7), release: rand(0.3) if (spread rrand_i(1, 7), 7).tick end
    sample :hat_bdu, amp: rand(1.5), release: rand if (spread rrand_i(1, 12), 12).look
    sample :bd_klub, amp: 1.2 if (spread rrand_i(1, 6), 8).look
    sleep x
  end
end

/main/
loop do
  A = [0.25, 0.5] # play around with these values or the bpm up top
  d_ply_beat A.tick
  print A
  sleep 36
end
