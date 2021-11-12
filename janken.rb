def game
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = ["グーを出しました", "チョキを出しました", "パーを出しました", "戦わない"]

  if player_hand == program_hand
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"
    puts "---------------"
    puts "あいこで..."
    @result = "draw"
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"
    puts "---------------"
    @result = "win"
  elsif (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1) || (player_hand == 0 && program_hand == 2)
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"
    puts "---------------"
    @result = "lose"
  elsif player_hand == 3
    puts "戦わない"
    return
  else
    return
  end

  if @result == "draw"
    def janken
      puts "0(グー)1(チョキ)2(パー)3(戦わない)"
      player_hand = gets.to_i
      program_hand = rand(3)
      jankens = ["グーを出しました", "チョキを出しました", "パーを出しました", "戦わない"]

      if player_hand == program_hand
        puts "ショ！"
        puts "---------------"
        puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"
        puts "---------------"
        puts "あいこで..."
        return true
      elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        puts "ショ！"
        puts "---------------"
        puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"
        puts "---------------"
        @result = "win"
        return false
      elsif (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1) || (player_hand == 0 && program_hand == 2)
        puts "ショ！"
        puts "---------------"
        puts "あなた:#{jankens[player_hand]}\n相手:#{jankens[program_hand]}"
        puts "---------------"
        @result = "lose"
        return false
      elsif player_hand == 3
        puts "戦わない"
        return false
      else
        return false
      end
    end

    next_game = true

    while next_game
      next_game = janken
    end
  end

  if @result == "win"
    puts "あっち向いて〜\n0(上)1(下)2(左)3(右)"
    player_hoi = gets.to_i
    program_hoi = rand(4)
    hois = ["上", "下", "左", "右"]
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{hois[player_hoi]}\n相手:#{hois[program_hoi]}"
    puts "---------------"

    if player_hoi == program_hoi
      puts "あなたの勝ちです"
      return false
    else
      return true
    end
  end

  if @result == "lose"
    puts "あっち向いて〜\n0(上)1(下)2(左)3(右)"
    player_hoi = gets.to_i
    program_hoi = rand(4)
    hois = ["上", "下", "左", "右"]
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{hois[player_hoi]}\n相手:#{hois[program_hoi]}"
    puts "---------------"

    if player_hoi == program_hoi
      puts "あなたの負けです"
      return false
    else
      return true
    end
  end
end

next_game = true

while next_game
  next_game = game
end