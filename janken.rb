#じゃんけん
def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    my_hand = gets.to_i
    machine_hand = rand(0..2)

    jankens = ["グー","チョキ","パー"]
    puts "ホイ！"
    puts "---------------"
    puts "あなた:#{jankens[my_hand]}を出しました"
    puts "相手:#{jankens[machine_hand]}を出しました"

    win = (my_hand == 0 && machine_hand == 1) || (my_hand == 1 && machine_hand == 2) || (my_hand == 2 && machine_hand == 0)
    lose = !(win)

    if my_hand == machine_hand
      puts "あいこで..."
      return true
    elsif win
      puts "あなた：勝ち"
      @result = "win"
      return false
    elsif lose
      puts "あなた：負け"
      @result = "lose"
      return false
    end
end

next_game = true

while next_game
  next_game = janken
end

#あっち向いてホイ
def hoi
    if @result == "win"
     puts "あっち向いて〜"
     puts "0(上)1(下)2(左)3(右)"

     my_face = gets.to_i
     machine_face = rand(0..3)

     hois = ["上","下","左","右"]
     puts "ホイ！"
     puts "---------------"
     puts "あなた:#{hois[my_face]}"
     puts "相手:#{hois[machine_face]}"
     if my_face == machine_face 
       puts "あなたの勝ち!"
     elsif my_face != machine_face 
       puts "やり直し"
       return true
     end
    end


    if @result == "lose"
     puts "あっち向いて〜"
     puts "0(上)1(下)2(左)3(右)"

     my_face = gets.to_i
     machine_face = rand(0..3)

     hois = ["上","下","左","右"]
     puts "ホイ！"
     puts "---------------"
     puts "あなた:#{hois[my_face]}"
     puts "相手:#{hois[machine_face]}"
     if my_face == machine_face 
       puts "あなたの負け"
     elsif my_face != machine_face 
       puts "やり直し"
       return true
     end
    end
end

hoi
renext_game = true

while renext_game
  renext_game = janken
end

hoi