require('rspec')
require('pry')
require('scrabble_score')

describe('#scrabble_score') do
  it('returns a scrabble score for a letter') do
    word = Word.new('a')
    expect(word.scrabble_score()).to(eq(1))
  end
  # it('returns a scrabble word of concatenated numbers') do
  #   word = Word.new('Hydro Flask')
  #   expect(word.scrabble_score()).to(eq(4421141115))
  # end
  it('returns a summed scrabble score') do
    word = Word.new('Hydro Flask')
    expect(word.scrabble_score()).to(eq(24))
  end
  it('returns a summed scrabble score') do
    word = Word.new('Cat')
    expect(word.scrabble_score()).to(eq(5))
  end
end
