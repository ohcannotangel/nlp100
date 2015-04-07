#! /usr/bin/ruby
# -*- coding: utf-8 -*-

class String
  def get_word_list()
    result = []
    self.split(" ").each{|s|
      [".", ","].each do |item|
        s.delete!(item)
      end
      result.push(s)
    }
    return result
  end
end

class Array
  def get_length_list
    result = []
    self.each{|word|
      result.push(word.length)
    }
    result
  end
end

str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

arr = str.get_word_list
p arr
length_list = arr.get_length_list
p length_list
