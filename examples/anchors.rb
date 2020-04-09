require "../lib/regexbuilder"

r = RegexBuilder::Builder.new do
  start_of_line #=> /^/
  end_of_line #=> /$/

  start_of_string #=> /\A/
  end_of_string #=> /\Z/
  # if the string ends with a newline, end_of_string will match
  # before it. end_of_string(true) will match after the newline.
  end_of_string(true) #=> /\z/

  first_match #=> /\G/

  word_boundary #=> /\b/
  non_word_boundary #=> /\B/

  positive_lookahead_assertion { literal 'a' } #=> /(?=a)/
  negative_lookahead_assertion { literal 'a' } #=> /(?!a)/
  positive_lookbehind_assertion { literal 'a' } #=> /(?<=a)/
  negative_lookbehind_assertion { literal 'a' } #=> /(?<!a)/
end
