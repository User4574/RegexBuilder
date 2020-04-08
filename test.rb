require './lib/regexbuilder'

def chars
  one_or_more { regex '[a-z]' }
end

def parens
  literal ' ('
  chars
  literal ')'
end

r = RegexBuilder::Builder.new do
  case_insensitive

  start_of_line
  one_or_more { digit }
  literal ': '
  chars
  maybe { parens }
  literal '.'
  end_of_line
end

puts r.to_s
puts r =~ "123: foo." ? ?Y : ?N
puts r =~ "123: 45." ? ?N : ?Y
puts r =~ "123: foo (bar)." ? ?Y : ?N
