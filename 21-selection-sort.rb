# 给定一数组内含数字，请实作选择排序法进行排序。
# https://zh.wikipedia.org/wiki/选择排序
# 假设数组有N个元素，先从第一个元素走访到最后一个，找到最小的那一个交换到第一个位置。
# 接着从第二个元素走访到最后一个，找到最小的元素，交换到第二个位置。以此类推，最后就会得到一个从小到大的数组。

def insertion_sort(arr)
  size = arr.size

  for i in 0..size
    for j in (i+1)..size # j > i
      if arr[j-1] < arr[i-1] # 比较j-1位置和i-1位置的元素大小
            min = arr[j-1] # 得到最小值
            arr[j-1] = arr[i-1] # j-1处换成i-1处的数字
            arr[i-1] = min # i-1处的数字换成最小值
        end
    end
end
return arr
end

arr =  [7, 68, 42, 46, 9, 91, 77, 46, 86, 1]

answer = insertion_sort(arr)

puts answer.to_s # 应该是 [1, 7, 9, 42, 46, 46, 68, 77, 86, 91]
