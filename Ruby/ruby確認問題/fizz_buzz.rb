# fizz_buzz.rb
 
def fizz_buzz(number)
    if number % 3 == 0 && number % 5 == 0 # number % 15
        puts "FizzBuzz"
    elsif number % 3 == 0
        puts "Fizz"
    elsif number % 5 == 0
        puts "Buzz"
    else
        return number.to_s
    end
end
   
puts "1 以上の数字を入力してください"
   
input = gets.to_i
   
puts '結果は、、、'
   
puts fizz_buzz(input)