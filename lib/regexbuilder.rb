require "../lib/flags"
require "../lib/reps"
require "../lib/classes"
require "../lib/anchors"
require "../lib/captures"

module RegexBuilder
  class Builder
    def initialize(&block)
      @regex = ""
      @flags = {
        case_insensitive: false,
        make_dot_match_newlines: false,
        ignore_whitespace: false,
        perform_substitutions_only_once: false
      }
      @inclass = 0

      instance_eval(&block)
    end

    include RegexBuilder::Flags
    include RegexBuilder::Reps
    include RegexBuilder::Classes
    include RegexBuilder::Anchors
    include RegexBuilder::Captures

    def regex(chars)
      @regex += chars
    end

    def literal(chars)
      chars.gsub!(/\./, '\.')
      chars.gsub!(/\(/, '\(')
      chars.gsub!(/\)/, '\)')
      @regex += chars
    end

    alias r regex
    alias l literal

    def to_regexp
      Regexp.new(@regex, options)
    end

    def to_s
      "/#{@regex}/#{options_s}"
    end

    def =~(str)
      str =~ to_regexp
    end
  end
end
