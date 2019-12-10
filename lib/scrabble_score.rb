class Word
  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def scrabble_score
    string_score = word.tr("aAeEiIoOuUlLnNrRsStT", "1").tr("dDgG", "2").tr("bBcCmMpP", "3").tr("fFhHvVwWyY", "4").tr("kK", "5").tr("jJxX", "8").tr("qQzZ", "10").tr(" ", "").split('')
    new_array = []
    string_score.each do |string|
      new_array.push(string.to_i())
    end
    new_array.reduce(:+)
  end
end
