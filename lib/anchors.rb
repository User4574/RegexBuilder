module RegexBuilder
  module Anchors
    def start_of_line
      @regex += '^'
    end

    def end_of_line
      @regex += '$'
    end

    def start_of_string
      @regex += '\A'
    end

    def end_of_string(include_newline = false)
      @regex += include_newline ? '\z' : '\Z'
    end

    def first_match
      @regex += '\G'
    end

    def word_boundary
      @regex += '\b'
    end

    def non_word_boundary
      @regex += '\B'
    end

    def positive_lookahead_assertion(&block)
      @regex += '(?='
      instance_eval(&block)
      @regex += ')'
    end

    def negative_lookahead_assertion(&block)
      @regex += '(?!'
      instance_eval(&block)
      @regex += ')'
    end

    def positive_lookbehind_assertion(&block)
      @regex += '(?<='
      instance_eval(&block)
      @regex += ')'
    end

    def negative_lookbehind_assertion(&block)
      @regex += '(?<!'
      instance_eval(&block)
      @regex += ')'
    end
  end
end
