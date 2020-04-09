module RegexBuilder
  module Classes
    class NotInClassError < Exception; end

    def character_class(inverted = false, &block)
      @regex += inverted ? '[^' : '['
      @inclass += 1
      instance_eval(&block)
      @inclass -= 1
      @regex += ']'
    end

    def intersect
      raise NotInClassError unless @inclass > 0
      @regex += '&&'
    end

    def any
      @regex += '.'
    end

    def word
      @regex += '\w'
    end

    def nonword
      @regex += '\W'
    end

    def digit
      @regex += '\d'
    end

    def non_digit
      @regex += '\D'
    end

    def hexdigit
      @regex += '\h'
    end

    def non_hexdigit
      @regex += '\H'
    end

    def whitespace
      @regex += '\s'
    end

    def non_whitespace
      @regex += '\S'
    end

    def linebreak
      @regex += '\R'
    end

    def posix_alnum
      raise NotInClassError unless @inclass > 0
      @regex += '[:alnum:]'
    end

    def posix_alpha
      raise NotInClassError unless @inclass > 0
      @regex += '[:alpha:]'
    end

    def posix_blank
      raise NotInClassError unless @inclass > 0
      @regex += '[:blank:]'
    end

    def posix_cntrl
      raise NotInClassError unless @inclass > 0
      @regex += '[:cntrl:]'
    end

    def posix_digit
      raise NotInClassError unless @inclass > 0
      @regex += '[:digit:]'
    end

    def posix_graph
      raise NotInClassError unless @inclass > 0
      @regex += '[:graph:]'
    end

    def posix_lower
      raise NotInClassError unless @inclass > 0
      @regex += '[:lower:]'
    end

    def posix_print
      raise NotInClassError unless @inclass > 0
      @regex += '[:print:]'
    end

    def posix_punct
      raise NotInClassError unless @inclass > 0
      @regex += '[:punct:]'
    end

    def posix_space
      raise NotInClassError unless @inclass > 0
      @regex += '[:space:]'
    end

    def posix_upper
      raise NotInClassError unless @inclass > 0
      @regex += '[:upper:]'
    end

    def posix_xdigit
      raise NotInClassError unless @inclass > 0
      @regex += '[:xdigit:]'
    end

    def posix_word
      raise NotInClassError unless @inclass > 0
      @regex += '[:word:]'
    end

    def posix_ascii
      raise NotInClassError unless @inclass > 0
      @regex += '[:ascii:]'
    end
  end
end
