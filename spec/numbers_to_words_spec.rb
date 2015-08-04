require('rspec')
require('pry')
require('numbers_to_words')

describe('Fixnum#numbers_to_words') do
  it('takes a number and converts to word') do
    expect((1).numbers_to_words()).to(eq('one'))
  end
end
