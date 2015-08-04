require('rspec')
require('pry')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  it('takes a single digit and converts to word') do
    expect((1).numbers_to_words()).to(eq('one'))
  end

  it('takes a value between 10 and 20 and converts to word') do
    expect((15).numbers_to_words()).to(eq('fifteen'))
  end

  it('takes a two digit and converts to word') do
    expect((77).numbers_to_words()).to(eq('seventy seven'))
  end
  it('takes a three digit and converts to word') do
    expect((777).numbers_to_words()).to(eq('seven hundred seventy seven'))
  end
  it('takes a four digit and converts to word') do
    expect((1234).numbers_to_words()).to(eq('one thousand two hundred thirty four'))
  end

  it('takes a five digit and converts to word') do
    expect((12345).numbers_to_words()).to(eq('twelve thousand three hundred fourty five'))
  end
  it('takes a 6 digit and converts to word') do
    expect((123456).numbers_to_words()).to(eq('one hundred twenty three thousand four hundred fifty six'))
  end
  it('takes a 7 digit and converts to word') do
    expect((1234567).numbers_to_words()).to(eq('one million two hundred thirty four thousand five hundred sixty seven'))
  end
  it('takes a 8 digit and converts to word') do
    expect((12345678).numbers_to_words()).to(eq('twelve million three hundred fourty five thousand six hundred seventy eight'))
  end
  it('takes a 9 digit and converts to word') do
    expect((123456789).numbers_to_words()).to(eq('one hundred twenty three million four hundred fifty six thousand seven hundred eighty nine'))
  end
end
