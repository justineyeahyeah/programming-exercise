# 给定一个数组包含 Hash，请根据指定的键值进行过滤和排序

arr = [
  { "name" => "Peter", "age" => 30 },
  { "name" => "John", "age" => 15 },
  { "name" => "David", "age" => 45 },
  { "name" => "Steven", "age" => 22 },
  { "name" => "Vincent", "age" => 6 },
]


def selectin_sort(arr)
  arr1 = []
  arr.sort_by! {|i| i["age"] } # 排序

  arr.each do |i|   # i是一个散列，i[key] = value
    if i["age"] >= 18
      arr1.push(i)
    end
  end
  return arr1
end



puts "所有成年人，并由小到大: #{selectin_sort(arr)}"

# 答案应该是
#[
#  { "name" => "Steven", "age" => 22 },
#  { "name" => "Peter", "age" => 30 },
#  { "name" => "David", "age" => 45 }
#]
