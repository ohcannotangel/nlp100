#! /usr/bin/ruby
# -*- coding: utf-8 -*-

def get_even_number_chars(str)
  result = []
  i = 0
  str.chars {|s|
    if (i % 2).zero?
      result.push(s)
    end
    i = i+1
  }
  return result.join('')
end


def get_odd_number_chars(str)
  result = []
  i = 0
  str.chars {|s|
    unless (i % 2).zero?
      result.push(s)
    end
    i = i+1
  }
  return result.join('')
end

str = "パタトクカシーー"
p get_even_number_chars(str)
p get_odd_number_chars(str)
