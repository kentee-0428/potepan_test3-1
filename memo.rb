require "csv" 

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i 

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
  puts "拡張子を除いたファイルを記入してください"
  
  create_file = gets.chomp.to_s
  
  puts "メモしたい内容を記入してください"
  puts "完了したらCtrl + Dを押します"
  
  memo_text = STDIN.read
  
  CSV.open("#{create_file}.csv","w") do |text|
    text << [memo_text]
  end
 
elsif memo_type == 2
  puts "拡張子を除いたファイルを記入してください"
  
  edit_file = gets.chomp.to_s
  
  puts "編集してください"
  puts "完了したらCtrl + Dを押します"
  
  file_text = CSV.read("#{edit_file}.csv") #ファイルのtextを読み込み表示
  puts file_text
  
  edit_text = STDIN.read  #編集テキスト受け取り代入
  
  CSV.open("#{edit_file}.csv", "a") do |text|
   text << [edit_text]
  end
  
  
else
   puts "1か2で選択してください"

end