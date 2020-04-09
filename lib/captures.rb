module RegexBuilder
  module Captures
    def capture(name = nil, &block)
      @regex += name.nil? ? '(' : "?<#{name}>"
      instance_eval(&block)
      @regex += ')'
    end

    alias group capture

    def backreference(name)
      @regex += '\\'
      case name
      when Numeric
        @regex += name
      when String
        @regex += "k<#{name}>"
      end
    end

    def alternative
      @regex += '|'
    end
  end
end
