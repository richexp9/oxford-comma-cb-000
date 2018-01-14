require 'pry'

array = [1, 2, 3, 4]
def oxford_comma(array)
  if array.size === 2
    list = "#{array[0]} and #{array[1]}"
    return list
  elsif array.size === 3
    list = "#{array[0]}, #{array[1]}, and #{array[2]}"
    return list
  elsif array.size > 3
    list = ''
    listFinish = ""
    listWOEnd = ''
    last = array.pop()
    array.each { |element|
      element = "#{element}, "
      list << element
    }
    listWOEnd = list.slice(0, list.length-1)
    return listFinish = "#{listWOEnd} and #{last}"
  else
    list = "#{array[0]}"
    return list
  end
 # binding.pry
end

puts oxford_comma(array)
