module RegexBuilder
  module Properties
    def character_property_alnum;    @regex += '\p{Alnum}';    end
    def character_property_alpha;    @regex += '\p{Alpha}';    end
    def character_property_blank;    @regex += '\p{Blank}';    end
    def character_property_cntrl;    @regex += '\p{Cntrl}';    end
    def character_property_digit;    @regex += '\p{Digit}';    end
    def character_property_graph;    @regex += '\p{Graph}';    end
    def character_property_lower;    @regex += '\p{Lower}';    end
    def character_property_print;    @regex += '\p{Print}';    end
    def character_property_punct;    @regex += '\p{Punct}';    end
    def character_property_space;    @regex += '\p{Space}';    end
    def character_property_upper;    @regex += '\p{Upper}';    end
    def character_property_xdigit;   @regex += '\p{XDigit}';   end
    def character_property_word;     @regex += '\p{Word}';     end
    def character_property_ascii;    @regex += '\p{ASCII}';    end
    def character_property_any;      @regex += '\p{Any}';      end
    def character_property_assigned; @regex += '\p{Assigned}'; end

    def character_property_letter;                   @regex += '\p{L}';  end
    def character_property_letter_lowercase;         @regex += '\p{Ll}'; end
    def character_property_letter_mark;              @regex += '\p{Lm}'; end
    def character_property_letter_other;             @regex += '\p{Lo}'; end
    def character_property_letter_titlecase;         @regex += '\p{Lt}'; end
    def character_property_letter_uppercase;         @regex += '\p{Lu}'; end

    def character_property_mark;                     @regex += '\p{M}';  end
    def character_property_mark_nonspacing;          @regex += '\p{Mn}'; end
    def character_property_mark_spacingcombining;    @regex += '\p{Mc}'; end
    def character_property_mark_enclosing;           @regex += '\p{Me}'; end

    def character_property_number;                   @regex += '\p{N}';  end
    def character_property_number_decdigit;          @regex += '\p{Nd}'; end
    def character_property_number_letter;            @regex += '\p{Nl}'; end
    def character_property_number_other;             @regex += '\p{No}'; end

    def character_property_punctuation;              @regex += '\p{P}';  end
    def character_property_punctuation_connector;    @regex += '\p{Pc}'; end
    def character_property_punctuation_dash;         @regex += '\p{Pd}'; end
    def character_property_punctuation_open;         @regex += '\p{Ps}'; end
    def character_property_punctuation_close;        @regex += '\p{Pe}'; end
    def character_property_punctuation_initialquote; @regex += '\p{Pi}'; end
    def character_property_punctuation_finalquote;   @regex += '\p{Pf}'; end
    def character_property_punctuationother;         @regex += '\p{Po}'; end

    def character_property_symbol;                   @regex += '\p{S}';  end
    def character_property_symbol_maths;             @regex += '\p{Sm}'; end
    def character_property_symbol_currency;          @regex += '\p{Sc}'; end
    def character_property_symbol_modifier;          @regex += '\p{Sk}'; end
    def character_property_symbol_other;             @regex += '\p{So}'; end

    def character_property_separator;                @regex += '\p{Z}';  end
    def character_property_separator_space;          @regex += '\p{Zs}'; end
    def character_property_separator_line;           @regex += '\p{Zl}'; end
    def character_property_separator_paragraph;      @regex += '\p{Zp}'; end

    def character_property_other;                    @regex += '\p{C}';  end
    def character_property_other_control;            @regex += '\p{Cc}'; end
    def character_property_other_format;             @regex += '\p{Cf}'; end
    def character_property_other_notassigned;        @regex += '\p{Cn}'; end
    def character_property_other_privateuse;         @regex += '\p{Co}'; end
    def character_property_other_surrogate;          @regex += '\p{Cs}'; end
  end
end
