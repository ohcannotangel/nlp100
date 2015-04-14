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


def create_n_gram(str, n)

  def func(list,n,result)
    if list.length == 0
      return result
    end
    len = (n <= list.length) ? n : list.length
    result.push(list[0..len-1].join())
    func(list[1..-1],n,result)
  end

  func(str,n,[])

end

str = "I am an NLPer"
arr = str.get_word_list()
p create_n_gram(arr,2)
