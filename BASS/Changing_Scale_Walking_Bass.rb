/changing scale walking bass/

loop do
  ring_1 = [(scale :C2, :yegah_2),(scale :D2, :yegah_2),(scale :G2, :yegah_2)].choose
  
  
  wait_time = 0.25
  
  live_loop :bass do
    
    play choose(ring_1.shuffle.drop(1).take(3).stretch(2)), release: rand
    sleep wait_time
    play choose(ring_1.shuffle.drop(1).take(3).stretch(2)), release: 0.2
    sleep wait_time
    play choose(ring_1.shuffle.drop(1).take(3).stretch(2)), release: rand
    sleep wait_time
    play choose(ring_1.shuffle.drop(1).take(3).stretch(2)), release: 0.2
  end
  
  sleep 4
end