#! /usr/bin/ruby
# -*- coding: utf-8 -*-

require 'benchmark'

def create_n_gram(list, n)
  def func(list,n,result)
    if list.length == 0
      return result
    end
    len = (n <= list.length) ? n : list.length
    result.push(list[0..len-1].join())
    func(list[1..-1],n,result)
  end
  func(list,n,[])
end



def union(list1, list2)
  result = []
  [list1, list2].each do |list|
    list.each do |item|
      if !result.member?(item)
        result.push(item)
      end
    end
  end
  result
end

def intersection(list1, list2)
  result = []
  list1 = list1.sort()
  list2 = list2.sort()

  list1.each do |item|
    if (list2.member?(item)) && (! result.member?(item))
      result.push(item)
    end
  end
  result
end

def difference(list1, list2)
  result = []

  list1 = list1.sort()
  list2 = list2.sort()

  list1.each do |item|
    if (!list2.member?(item))
      result.push(item)
    end
  end
  result
end


class Array

  def linear_search(val)
    self.each_with_index do |item,i|
      if item == val
        return i
      else
        next
      end
    end
    return nil
  end

  def binary_search(val)

    def func(val, left = 0, right = nil)
      right = self.size - 1 unless right
      mid = (left + right) / 2

      return nil if left > right

      if val == self[mid]
        return mid
      elsif val > self[mid]
        func(val, mid+1, right)
      else
        func(val, left, mid-1)
      end
    end

    func(val)

  end

end


str1 = "paraparaparadise"
str2 = "paragraph"

x = create_n_gram(str1.split(""), 2)
y = create_n_gram(str2.split(""), 2)
print "X : #{x}\n"
print "Y : #{y}\n"

p "union"
p union(x,y)

p "intersection"
p intersection(x,y)

p  "difference x y"
p difference(x,y)

p  "difference y x"
p difference(y,x)

print "\n\n\n"

p x.sort.binary_search('se')
p y.sort.binary_search('se')
