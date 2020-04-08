module RegexBuilder
  module Flags
    def case_insensitive
      @flags[:case_insensitive] = true
    end

    def case_sensitive
      @flags[:case_insensitive] = false
    end

    def make_dot_match_newlines
      @flags[:make_dot_match_newlines] = true
    end

    def make_dot_not_match_newlines
      @flags[:make_dot_match_newlines] = false
    end

    def ignore_whitespace
      @flags[:ignore_whitespace] = true
    end

    def obey_whitespace
      @flags[:ignore_whitespace] = false
    end

    def options
      (@flags[:case_insensitive] ? Regexp::IGNORECASE : 0) |
      (@flags[:make_dot_match_newlines] ? Regexp::MULTILINE : 0) |
      (@flags[:ignore_whitespace] ? Regexp::EXTENDED : 0)
    end

    def options_s
      (@flags[:case_insensitive] ? "i" : "") +
      (@flags[:make_dot_match_newlines] ? "m" : "") +
      (@flags[:ignore_whitespace] ? "x" : "")
    end
  end
end
