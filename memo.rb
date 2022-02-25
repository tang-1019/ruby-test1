require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.chomp

if memo_type == "1"
    puts "拡張子を除いたファイル名を入力してください"
    memo_tytle = gets.chomp
    puts "メモしたい内容を入力してください"
    puts "完了したら「Ｃｔｒｌ + Ｄ」を押してください"
    CSV.open("#{memo_tytle}.csv","w") do |memo|
        content = readlines(chomp: true)
        memo << content
    end

elsif memo_type == "2"
    puts "拡張子を除いたファイル名を入力してください"
    memo_tytle = gets.chomp
    puts "メモしたい内容を入力してください"
    puts "完了したら「Ｃｔｒｌ + Ｄ」を押してください"
    CSV.open("#{memo_tytle}.csv","a") do |memo|
        content = readlines(chomp: true)
        memo << content
    end

else
    puts "1,2以外が入力されたので処理を終了します"
    
end
