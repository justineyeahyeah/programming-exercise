# 给定一 Hash，输出有最大 value 的 key

def find_max(hash)
  max = hash.values.max
  return hash.key(max)
  # How to find a hash key containing a matching value
  # Ruby 1.9 and greater: hash.key(value) => key
end

h = {
  "a" => 71,
  "b" => 38,
  "c" => 21,
  "d" => 80,
  "e" => 10
}

answer = find_max(h)

puts "有最大 value 的是 #{answer}" # 应该是 d
