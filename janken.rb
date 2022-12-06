def janken
  puts "じゃんけん。。"
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

  player_hand = gets.to_i
  program_hand = rand(3)
  
  jankens = ["グー", "チョキ", "パー", "戦わない"]
  
  puts "ホイ！"
  puts "ーーーーーーーーーーーー"
  puts "あなた:#{jankens[player_hand]}をだしました"
  puts "相手:#{jankens[program_hand]}をだしました"
  puts "ーーーーーーーーーーーー"
  
  if player_hand == program_hand
    puts "あいこで"
    return true
  
  elsif player_hand == 3 || program_hand == 3
    puts "戦わないことを選択。終了します。"
    exit
    
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    $janken_result = "win"
    return false
  
  else
    puts "あなたの負けです"
    $janken_result = "lose"
    return false
  end
end

  next_game = true

  while next_game do
    next_game = janken
  end

  
def achimuite_hoi
  puts "あっちむいて〜"
  puts "0(上)1(下)2(右)3(左)"
    
  player_direction = gets.to_i
  program_direction = rand(3)
  
  directions = ["上", "下", "右", "左"]
  
  puts "ほい"
  puts "ーーーーーーーーーーーー"
  puts "あなた:#{directions[player_direction]}を指しました"
  puts "相手:#{directions[program_direction]}を指しました"
  puts "ーーーーーーーーーーーー"
  
  if player_direction == program_direction && $janken_result == "win"
    puts "あなたの勝利です"
    return false
    
  elsif player_direction == program_direction && $janken_result == "lose"
    puts "あなたの負けです"
    return false
    
  else
    return true
  end  
end
  
  next_game = true
  
  while achimuite_hoi do
      next_game = janken
  end