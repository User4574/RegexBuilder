require "regexbuilder"

r = RegexBuilder::Builder.new do
  character_property_alnum #=> /\p{Alnum}/

  charcter_property_letter_lowercase #=> /\p{Ll}/
end
