#!//Users/matsuura/.rbenv/shims/ruby
# -*- coding: utf-8 -*-

def reverse(str)
  result = []
  str.chars {|ch| result.unshift(ch) }
  return result.join()
end


def reverse_recursive(str)
  def func(str, result)
    if str == ''
      return result.join()
    else
      result.unshift(str[0])
      func(str[1..-1],result)
    end
  end
  func(str, [])
end

# def reverse_recursive_swap(arr)

#   def func(dest_arr)
#     return dest_arr if dest_arr == nil

#     # swap
#     dest_arr[0], dest_arr[-1] = dest_arr[-1], dest_arr[0]

#     func(dest_arr[1..-2])
#   end

#   dest_arr = arr.clone
#   func(dest_arr)
#   return dest_arr
# end


p  reverse("パトカー")
p  reverse_recursive("パトカー")
p  reverse_recursive_swap("パトカー")

####################################################################
# String クラスに追加
####################################################################

class String
  def my_reverse
    result = []
    self.chars {|ch| result.unshift(ch) }
    return result.join()
  end

  def my_reverse_recursive
    def func(str, result)
      if str == ''
        return result.join()
      else
        result.unshift(str[0])
        func(str[1..-1],result)
      end
    end
    func(self, [])
  end

end

p "パトカー".my_reverse_recursive
p "パトカー".my_reverse
