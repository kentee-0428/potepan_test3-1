# -------------変数定義-------------------------------
disp_rps = "0(グー)1(チョキ)2(パー)3(戦わない)"
disp_look = "0(上)1(右)2(下)3(左)"
rps = ["グー", "チョキ", "パー", "戦わない"]
look = ["上", "右", "下", "左"]
rps_fighter = ["グー", "チョキ", "パー"].sample
look_fighter = ["上", "右", "下", "左"].sample
border = "--------------------------"
# -------------変数定義-------------------------------


# -------------関数定義------------------------------
def rps_fighter_agin
  return ["グー", "チョキ", "パー"].sample
end

def look_fighter_again
  return ["上", "右", "下", "左"].sample
end
# -------------関数定義------------------------------


loop do
  puts "じゃんけん..."
  puts disp_rps
  
  rps_number = gets.chomp.to_i
  
  if rps[rps_number]
    if rps[rps_number] == "戦わない"
      puts "戦いません..."
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
          
          rps_fighter = rps_fighter_agin
          
          puts "ショッ！"
          puts border
          puts "あなた:#{rps[rps_number]}を出しました"
          puts "相手:#{rps_fighter}を出しました"
          
            if rps[rps_number] != rps_fighter
              # 変数確認
              p rps[rps_number]
              p rps_fighter
              puts "結果が出たのであっち向いてホイに移ります"
              # 変数確認
              next
            end
        end
    end
    puts "あっち向いて〜"
    puts disp_look
    
    look_number = gets.chomp.to_i
    
    look_fighter = look_fighter_again
    
    if look[look_number]
      puts "ホイ！"
      puts border
      puts "あなた:#{look[look_number]}"
      puts "相手:#{look_fighter}"
      
      if look[look_number] == look_fighter
        # 変数確認
        p look[look_number]
        p look_fighter
        puts "勝負がついたので終わります"
        # 変数確認
        break
      end
    else
       puts "#{disp_look}の中から選んでください"
    end
  else
    puts "#{disp_rps}の中から選んでください"
  end
end