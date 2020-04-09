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
      if @inclass > 0
        @regex += '&&'
      else
        raise NotInClassError
      end
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

    def decdigit
      @regex += '\d'
    end

    def non_decdigit
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

    def alnum
      @regex += '[:alnum:]'
    end

    def alpha
      @regex += '[:alpha:]'
    end

    def blank
      @regex += '[:blank:]'
    end

    def cntrl
      @regex += '[:cntrl:]'
    end

    def digit
      @regex += '[:digit:]'
    end

    def graph
      @regex += '[:graph:]'
    end

    def lower
      @regex += '[:lower:]'
    end

    def print
      @regex += '[:print:]'
    end

    def punct
      @regex += '[:punct:]'
    end

    def space
      @regex += '[:space:]'
    end

    def upper
      @regex += '[:upper:]'
    end

    def xdigit
      @regex += '[:xdigit:]'
    end

    def word
      @regex += '[:word:]'
    end

    def ascii
      @regex += '[:ascii:]'
    end
  end
end
