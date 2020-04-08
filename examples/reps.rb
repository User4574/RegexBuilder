require "../lib/regexbuilder"

r = RegexBuilder::Builder.new do
  maybe { literal 'a' } #=> /(a)?/
  zero_or_more { literal 'a' } #=> /(a)*/
  one_or_more { literal 'a' } #=> /(a)+/

  rep(4) { literal 'a' } #=> /(a){4}/
  rep(1..) { literal 'a' } #=> /(a){1,}/
  rep(..4) { literal 'a' } #=> /(a){,4}/
  rep(1..4) { literal 'a' } #=> /(a){1,4}/

  # Note, the usages above create capturing groups.
  # If you don't want the group to capture, pass false.
  maybe(false) { literal 'a' } #=> /(?:a)?/
  rep(4, false) { literal 'a' } #=> /(?:a){4}/
end
