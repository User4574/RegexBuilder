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
  end
end
