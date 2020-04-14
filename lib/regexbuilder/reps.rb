module RegexBuilder
  module Reps
    def maybe(capture = true, &thing)
      @regex += capture ? '(' : '(?:'
      instance_eval(&thing)
      @regex += ')?'
    end

    def zero_or_more(capture = true, &thing)
      @regex += capture ? '(' : '(?:'
      instance_eval(&thing)
      @regex += ')*'
    end

    def one_or_more(capture = true, &thing)
      @regex += capture ? '(' : '(?:'
      instance_eval(&thing)
      @regex += ')+'
    end

    def rep(n, capture = true, &thing)
      @regex += capture ? '(' : '(?:'
      instance_eval(&thing)
      case n
      when Numeric
        @regex += "){#{n}}"
      when Range
        @regex += "){#{n.begin},#{n.end}}"
      end
    end
  end
end
