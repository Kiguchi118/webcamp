# 問題1
puts "計算を始めます．\r2つの値を入力してください．"
a = gets.to_i
b = gets.to_i
puts "計算結果を出力します"
puts "a * b = #{a * b}"
puts "計算を終了します\r"

# 問題2
puts "-----------------------"
puts "計算を始めます．\r何回計算を繰り返しますか？"
count = gets.to_i
i = 1
while i <= count do
    puts "-----------------------"
    puts "#{i}回目の計算"
    puts "計算を始めます．\r2つの値を入力してください．"
    a = gets.to_i
    b = gets.to_i
    puts "計算結果を出力します"
    puts "a + b = #{a + b}"
    puts "a - b = #{a - b}"
    puts "a * b = #{a * b}"
    puts "a / b = #{a / b}"
    i += 1
end

puts "計算を終了します．"
    