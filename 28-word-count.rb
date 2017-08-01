# 请打开 wordcount.txt，计算每个单字出现的次数

def count_words(doc)
  words = doc.downcase.scan(/\w+/)
  h = {} # hash散列用{}, 普通数组用[]
  words.each do |word|
    h[word] = words.count(word) # arr.count(i)是计算arr中i元素的数量
  end
  h.each do |key, value|
    puts "#{key}: #{value}"
  end
end

doc = File.read("wordcount.txt")
count_words(doc)
