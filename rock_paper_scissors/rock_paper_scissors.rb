disp_rps = "0(グー)1(チョキ)2(パー)3(戦わない)"
disp_look = "0(上)1(右)2(下)3(左)"
rps = ["グー", "チョキ", "パー", "戦わない"]
look = ["上", "右", "下", "左"]
rps_fighter = ["グー", "チョキ", "パー"].sample
look_fighter = ["上", "右", "下", "左"].sample

border = "--------------------------"

puts "じゃんけん..."
puts disp_rps

rps_number = gets.chomp.to_i

if rps[rps_number]
  if rps[rps_number] == "戦わない"
    return
  else
  puts "ホイ！"
  puts border
  puts "あなた:#{rps[rps_number]}を出しました"
  puts "相手:#{rps_fighter}を出しました"
  puts border
    while rps[rps_number] == rps_fighter
    puts "あいこで..."
    puts disp_rps
    
    rps_number = gets.chomp.to_i
    
    puts "ショッ！"
    puts border
    puts "あなた:#{rps[rps_number]}を出しました"
    puts "相手:#{rps_fighter}を出しました"
    end
  end
  puts "あっち向いて〜"
  puts disp_look
  
  look_number = gets.chomp.to_i
  
  if look[look_number]
    puts "ホイ！"
    puts border
    puts "あなた:#{look[look_number]}"
    puts "相手:#{look_fighter}"
  end
else
  puts "#{disp_rps}の中から選んでください"
end
