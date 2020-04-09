require "../lib/regexbuilder"

def chars
  one_or_more { character_class {
    r 'a-y'
    intersect
    character_class(true) { r 'A-Z' }
  } }
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
  maybe(false) { parens }
  rep(..4) { literal '.' }
  end_of_line
end

puts r.to_s
puts r =~ "123: foo." ? ?Y : ?N
puts r =~ "123: 45." ? ?N : ?Y
puts r =~ "123: Foo (Bar)." ? ?Y : ?N
puts r =~ "123: Foo (Bar)..." ? ?Y : ?N
