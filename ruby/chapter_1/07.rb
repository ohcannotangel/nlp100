#! /usr/bin/ruby
# -*- coding: utf-8 -*-

def template(template,args)
  result = template
  args.map do |k,v|
    result = result.gsub("{" + k + "}", v.to_s)
  end
  return result
end

tmpl = "{x}時の{y}は{z}"
p template(tmpl, { "x" => 12, "y" => "気温", "z" => 22.4})

