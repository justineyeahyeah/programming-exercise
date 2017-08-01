# 输入一个数字 N，请检查是不是质数
# 提示：从 2 开始到 N/2 不断去除这个数字，如果可以整除就表示不是质数

def is_prime(n)
  if n.to_i > 0 && n.to_i <= 3
    return true
  elsif n.to_i  > 3
      i = 2
      while i <= (n.to_i / 2)
        if (n.to_i % i == 0)
          return false
          break
        end
          i+=1
        end
      return true
 end
 end

print "请输入数字 N，然后按 Enter: "
n = gets

if is_prime(n)
  puts "这是质数"
else
  puts "这不是质数"
end
