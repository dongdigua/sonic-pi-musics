# C418 - Wet Hands
# by dongdigua

use_synth :piano
use_synth_defaults sustain_level: 1
use_bpm 72

define :left1 do
  play :A2, sustain: 1, release: 2, amp: 0.7; sleep 0.5
  play :Cs3, amp: 0.8; sleep 0.5
  play :A3; sleep 0.5
  play :B3; sleep 0.5
  play :Cs4, amp: 0.8; sleep 0.5
  play :B3, amp: 0.9; sleep 0.5
  play :A3; sleep 0.5
  play :E3; sleep 0.5
  
  play :D3; sleep 0.5
  play :Fs3; sleep 0.5
  play :Cs4, amp: 0.9; sleep 0.5
  play :E4, amp: 0.8; sleep 0.5
  play :Cs4, amp: 0.9; sleep 0.5
  play :A3, amp: 0.6, release: 2; sleep 1.5
end

define :left2 do
  play :G2, sustain: 1, release: 2, amp: 0.8; sleep 0.5
  play_pattern_timed [:B2, :D3, :Fs3, :A3, :Fs3, :D3, :B2], 0.5
  play_pattern_timed [:G2, :B2, :D3, :Fs3], [0.5, 0.5, 0.5, 0.5]
  play :A3, amp: 0.7, release: 1.5; sleep 2
end

define :right1 do
  sleep 4
  sleep 4
  sleep 4
  sleep 4
  
  play :Gs4, sustain: 2, release: 1; sleep 3
  play :A4; sleep 1
  
  play :Fs4, sustain: 2, release: 1; sleep 3
  play_pattern_timed [:E4, :Fs4], 0.5
  
  play :Gs4, sustain: 2, release: 1; sleep 3
  play :B4; sleep 0.5; play :Cs5; sleep 1
  play :Fs4, sustain: 2, release: 0.5; sleep 2.5
  play_pattern_timed [:Cs5, :E5], 0.5
  
  play :G5, sustain: 2, release: 1, amp: 1.3; sleep 1.5
  play_pattern_timed [:Fs5, :D5, :A4], [0.5, 1, 0.5]
  
  play :B4, sustain: 2, release: 1; sleep 3.5
  sleep 1
  
  play :G5, amp: 1.3; sleep 1
  play_pattern_timed [:Fs5, :D5, :A4], [1, 1, 0.5]
  play :B4, sustain: 3, release: 1; sleep 3.5
  play :A4; sleep 1
  
  play :E4, sustain: 3, release: 1; sleep 4
end

define :main do
  #left hand
  in_thread do
    4.times do
      left1
    end
    
    2.times do
      left2
    end
    
    play :A2, sustain: 1, release: 2, amp: 0.7; sleep 0.5
    play :Cs3, amp: 0.8; sleep 0.5
    play_pattern_timed [:A3, :B3], 0.5
    play :Cs4, amp: 0.8; sleep 0.5
    play :B3, amp: 0.9; sleep 0.5
    play_pattern_timed [:A3, :E3], 0.5
    
    # 46 begin
    play :A2, sustain: 2, release: 1, amp: 0.9; sleep 0.5
    play_pattern_timed [:Cs3, :E3, :A3, :Cs4, :E4, :A4], 0.5
    play :Cs5, sustain: 2, release: 1, amp: 0.8; sleep 2.5
    # 46 end
    
    2.times do
      play_pattern_timed [:B2, :D3, :Fs3, :A3], 0.5
      play :Cs4, sustain: 2, release: 1, amp: 0.9; sleep 2
    end
    
    play_pattern_timed [:G2, :B2, :D3, :Fs3], 0.5
    play :A3, amp: 0.7, release: 1.5; sleep 2
    play [:A2, :Cs3], sustain: 3, release: 2; sleep 4
    
    play_pattern_timed [:E2, :Gs2, :B2, :E3, :Gs3, :E3, :B2, :Gs2], 0.5
    play_pattern_timed [:E2, :Gs2, :B2, :E3, :Gs3, :E3], 0.5
    play :A2; sleep 1
    
    play_pattern_timed [:G2, :B2, :D3, :Fs3, :A3, :Fs3, :D3, :B3], 0.5
    
    play_pattern_timed [:A2, :Cs3, :E3, :A3, :Cs4, :B3, :A3, :E3], 0.5
    
    2.times do
      play_pattern_timed [:E2, :Gs2, :B2, :E3], 0.5
      play :Gs3, sustain: 2, release: 1; sleep 2
    end
    
    2.times do
      play_pattern_timed [:E2, :Gs2, :B2, :E3, :B2], 0.5, amp: 0.6
      play :Gs2, sustain: 2, release: 1, amp: 0.5; sleep 1.5
    end
    
  end
  
  #right hand
  in_thread do
    right1
    
    sleep 6
    
    play [:Fs4, :A4, :D5], sustain: 2, release: 1, amp: 1.3; sleep 1.5
    play_pattern_timed [:Cs5, :A4, :E4, :Fs4], [0.5, 1, 0.5, 1]
    play :D5, sustain: 2, release: 1; sleep 2.5
    play_pattern_timed [:B4, :Cs5, :D5, :Cs5, :D5], [0.5, 0.5, 1, 0.5, 1]
    play :Fs5, sustain: 2, release: 1, amp: 1.2; sleep 1.5
    
    play :Cs5, sustain: 3, release: 1, amp: 0.9; sleep 3
    play_pattern_timed [:B3, :A3], 0.5
    
    play :B3, sustain: 2, release: 1; sleep 2
    sleep 6
    
    play_pattern_timed [:G5, :Fs5, :E5, :D5, :E5, :D5, :E5], 0.5
    play :Fs5; sleep 1
    play :E5, sustain: 2, release: 1; sleep 1.5
    play :A5, sustain: 3, release: 2; sleep 2
    
    play_pattern_timed [:Gs5, :E5, :B4, :Gs4], 0.5
    play :E4, sustain: 2, release: 1; sleep 2
    
    play_pattern_timed [:B4, :Gs4, :E4], 0.5
    play :B3, sustain: 4, release: 3
  end
end

with_fx :reverb do
  main
end





