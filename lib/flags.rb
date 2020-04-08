module RegexBuilder
  module Flags
    def case_insensitive
      @flags[:case_insensitive] = true
    end

    def case_sensitive
      @flags[:case_insensitive] = false
    end

    def options
      (@flags[:case_insensitive] ? "i" : "") +
      (@flags[:make_dot_match_newlines] ? "m" : "") +
      (@flags[:ignore_whitespace] ? "x" : "") +
      (@flags[:perform_substitutions_only_once] ? "o" : "")
    end
  end
end
