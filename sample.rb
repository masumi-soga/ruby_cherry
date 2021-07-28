puts 1+2

a = "Hello World"
puts a

b = "こんにちは"
puts b

# ダブルクオーテーション内のダブルクオーテーション
# シングルクオーテーション内のシングルクオーテーションは
# 「\」でエスケープできる
single = 'He said, "Don\'t speak."'
double = "He said, \"Don't speak\""

puts single
puts double

point = [2,3,3,2]
score = 0

  point.each do |p|
    points = p == 2 ? "ツーポイント" : "スリーポイント"
    puts points
  end
