# 使用者不断输入数字存进 Array，最后输出总和、平均、最大值、最小值

arr = []

while (true)
  print "请输入数字，结束请直接按 Enter: "
  user_input = gets
  if user_input == "\n"
    break
  else
    arr << user_input.to_i
  end
end

def sum(array)
  sum = 0
  array.each do |i|
    sum+=i
  end
  return sum 
end

def avr(array)
  sum(array) / array.size
end

puts arr.to_s

puts "总和是 #{arr.sum}"
puts "平均是 #{avr(arr)}"
puts "最大值是 #{arr.max}"
puts "最小值是 #{arr.min}"
