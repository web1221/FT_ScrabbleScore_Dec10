class Word
  def initialize(word)
    @word = word.upcase()
    @letters = @word.split('')
    @scores = {
      1 => /[AEIOULNRST]/,
      2 => /[DG]/,
      3 => /[BCMP]/,
      4 => /[FHVWY]/,
      5 => /[K]/,
      8 => /[JX]/,
      10 => /[QZ]/
    }
  end

  def scrabble_score
    score = 0
    @letters.each do |letter|
      @scores.each do |key, value|
        if value =~ letter
          score += key
        end
      end
    end
    score
  end
end
