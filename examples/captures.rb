require "regexbuilder"

r = RegexBuilder::Builder.new do
  capture { literal 'a' } #=> /(a)/
  capture("cap") { literal 'a' } #=> /(?<cap>a)/

  # group is an alias for capture
  group { literal 'a' } #=> /(a)/

  backreference(1) #=> /\1/
  backreference("cap") #=> /\k<cap>/
end

r = RegexBuilder::Builder.new do
  literal 'a'
  alternative
  literal 'b'
end #=> /a|b/

r = RegexBuilder::Builder.new do
  group {
    literal 'a'
    alternative
    literal 'b'
  }
  literal 'c'
end #=> /(a|b)c/
