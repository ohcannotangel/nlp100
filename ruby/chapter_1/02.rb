#! /usr/bin/ruby
# -*- coding: utf-8 -*-

def join_two_str(str1, str2)

  def func(str1, str2, result)
    if str1 == ""
      result.push(str2).join()
    elsif str2 == ""
      result.push(str1).join()
    else
      result.push(str1[0]).push(str2[0])
      # recurse
      func(str1[1..-1],str2[1..-1],result)
    end
  end

  func(str1,str2,[])

end


p join_two_str("パトカー","タクシー")
p join_two_str("パトカーーー！","タクシー")
p join_two_str("パトカー","タクシーーー？")
p join_two_str("","")
