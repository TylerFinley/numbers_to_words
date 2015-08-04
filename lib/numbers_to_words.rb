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

    digit2 = {2 => 'twenty',
              3 => 'thirty',
              4 => 'fourty',
              5 => 'fifty',
              6 => 'sixty',
              7 => 'seventy',
              8 => 'eighty',
              9 => 'ninety'}

    if self >= 10 && self <= 20
      word = digits_to_20.fetch(self)
    else
      value = self.to_s
        if value.length() == 1
          word = digit1.fetch(self)
        elsif value.length() == 2
          char = value.split("")
          word = digit2.fetch(char[0].to_i) + " " + digit1.fetch(char[1].to_i)
        elsif value.length() == 3
          char = value.split("")
          word = digit1.fetch(char[0].to_i) + " hundred " +
                 digit2.fetch(char[1].to_i) + ' ' +
                 digit1.fetch(char[2].to_i)
        elsif value.length() == 4
            char = value.split("")
            word =digit1.fetch(char[0].to_i) + ' thousand ' +
                  digit1.fetch(char[1].to_i) + " hundred " +
                 digit2.fetch(char[2].to_i) + ' ' +
                 digit1.fetch(char[3].to_i)
        elsif value.length() == 5
           char = value.split("")

           word =digits_to_20.fetch((char[0] + char[1]).to_i) + ' thousand ' +
                 digit1.fetch(char[2].to_i) + " hundred " +
                 digit2.fetch(char[3].to_i) + ' ' +
                 digit1.fetch(char[4].to_i)
        elsif value.length() == 6
            char = value.split("")
            word =digit1.fetch(char[0].to_i) + ' hundred ' +
                 digit2.fetch(char[1].to_i) + ' ' + digit1.fetch(char[2].to_i) + ' thousand ' +
                 digit1.fetch(char[3].to_i) + " hundred " +
                 digit2.fetch(char[4].to_i) + ' ' +
                 digit1.fetch(char[5].to_i)
        elsif value.length() == 7
           char = value.split("")
           word =digit1.fetch(char[0].to_i) + ' million ' +
                 digit1.fetch(char[1].to_i) + ' hundred ' +
                 digit2.fetch(char[2].to_i) + ' ' + digit1.fetch(char[3].to_i) + ' thousand ' +
                 digit1.fetch(char[4].to_i) + " hundred " +
                 digit2.fetch(char[5].to_i) + ' ' +
                 digit1.fetch(char[6].to_i)
        elsif value.length() == 8
            char = value.split("")
            word =digits_to_20.fetch((char[0] + char[1]).to_i) + ' million ' +
                 digit1.fetch(char[2].to_i) + ' hundred ' +
                 digit2.fetch(char[3].to_i) + ' ' + digit1.fetch(char[4].to_i) + ' thousand ' +
                 digit1.fetch(char[5].to_i) + " hundred " +
                 digit2.fetch(char[6].to_i) + ' ' +
                 digit1.fetch(char[7].to_i)
        end
    end
    word
  end
end
