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
end
