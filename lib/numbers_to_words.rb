require('pry')

class Fixnum
  define_method(:numbers_to_words) do
    word = ""
    digit1 = {1 => 'one',
              2 => 'two',
              3 => 'three',
              4 => 'four',
              5 => 'five',
              6 => 'six',
              7 => 'seven',
              8 => 'eight',
              9 => 'nine'}

    digits_to_20 = {10 => 'ten',
              11 => 'eleven',
              12 => 'twelve',
              13 => 'thirteen',
              14 => 'fourteen',
              15 => 'fifteen',
              16 => 'sixteen',
              17 => 'seventeen',
              18 => 'eighteen',
              19 => 'nineteen',
              20 => 'twenty'}

    # digit2 = {10 => 'ten',
    #           20 => 'twenty',
    #           30 => 'thirty',
    #           40 => 'fourty',
    #           50 => 'fifty',
    #           60 => 'sixty',
    #           70 => 'seventy',
    #           80 => 'eighty',
    #           90 => 'ninety'}
    if self >= 10 && self <= 20
      word = digits_to_20.fetch(self)
    else
      value = self.to_s
      value.each_char do |char|
        if value.length() == 1
          word = digit1.fetch(char.to_i)
        end
      end
    end
    word
  end
end
