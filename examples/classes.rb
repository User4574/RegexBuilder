require "../lib/regexbuilder"

r = RegexBuilder::Builder.new do
  character_class { regex 'a-z' } #=> /[a-z]/

  any #=> /./

  character_class { alnum } #=> /[[:alnum:]]/
  character_class {
    alnum
    punct
  } #=> /[[:alnum:][:punct:]]/
end
