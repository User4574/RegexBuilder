class RegexBuilder
  def initialize(&block)
    @regex = ''
    instance_eval(&block)
  end

  def start_of_line
    @regex += '^'
  end

  def end_of_line
    @regex += '$'
  end

  def digit
    @regex += '\d'
  end

  def one_or_more(&thing)
    instance_eval(&thing)
    @regex += '+'
  end

  def maybe(&thing)
    @regex += '('
    instance_eval(&thing)
    @regex += ')?'
  end

  def regex(chars)
    @regex += chars
  end

  def literal(chars)
    chars.gsub!(/\./, '\.')
    chars.gsub!(/\(/, '\(')
    chars.gsub!(/\)/, '\)')
    @regex += chars
  end

  def to_regex
    Regexp.new(@regex)
  end

  def to_s
    @regex
  end

  def =~(str)
    str =~ to_regex
  end
end
