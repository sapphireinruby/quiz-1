1.請說明 Fixnum (整數) 和 Float (浮點數) 之間的差異
Ans:
一為整數 一為有小數點之數值
而作除法運算時 整數運算的答案若有小數點會被忽略
浮點數運算時 有小數點的答案會正確顯示

2.
今天有兩個字串：

    str1 = "Hallo Welt!" 
    str2 = " NTU Rails 261!"

    請說明以下兩個印出字串的方式的不同處：

    puts str1 + str2
    puts “#{str1}#{str2}”

Ans:
  兩組輸出結果相同
  第一組puts str1 + str2  
  字串直接連接,會耗損記憶體

  puts "#{str1}#{str2}"
  是以內插方式,把原有的字串叫出印出



3.
請解釋 array 和 hash 的不同處
Ans:
array陣列使用數字索引，而hash則使用Key。
Array使用索引(index)之數字來存取陣列成員(element)。要第一項目的索引是從0開始計算。
Hash的宣告可以用 literal notation 的方式，key-value組合表示，Hash的Key和Value則可以是不同型態的物件。


4.
請寫一段 code 從 [1, "a string", 3.14, [1,2,3,4]] 這個陣列找出所有非字串的值
Ans:
    [1, "a string", 3.14, [1,2,3,4]].each do |x|
      if x.class.to_s == "String"
        puts x
      end
    end

5.
請列出兩種產出亂數的方法
Ans:
[array].shuffle!
random(1..15)

6.
請把 lesson1 程式碼裡的 calculator.rb 裡面的使用者輸入兩個數字的方式改寫成 method，並要有防止使用者亂輸入值的功能
Ans:
    def get_input()
      begin
        num = gets.chomp.to_i
      end while ![1,2,3,4,5,6,7,8,9,0].include?(num)
      return num
    end
7.
以下這段程式碼：
((1 > 3)&&(true == true))||(!!!false)
會執行出什麼結果？ 請試試不用 irb 算出結果

Ans:
  ((false)&&(true))||(!!!false)

  ((false)&&(true))||(!布林false)

  ((false)&&(true))||(true)
  (false && true) || true
  false || true
  true

8.
請問 binding.pry 是什麼？ 要如何使用它？
Ans:
Debug工具，
在檔案的第一行 標示 ruby require 'pry'
並在要偵錯的地方標示 ruby 'binding.pry' 
接下來執行程式，程式跑到這個地方的時候就會進入debug的模式

9.
下面的一段程式碼，請嘗試用其他方法把 if...else...end 簡化成一行

var = 5
if var >= 5
  return "var is greater than or equal to 5"
else
  return "var is less than 5"
end

Ans:
 puts var >= 5 ? "var is greater than or equal to 5" : "var is less than 5"
