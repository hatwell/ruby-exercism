module BookKeeping
  VERSION = 1
end

class Phrase

  def initialize(words)
    @phrase = words.downcase.scan(/\b[\w']+\b/)

  end
  def word_count
    result = {}
    @phrase.each do |word|
      result[word] != nil ? result[word] += 1 : result[word] = 1
    end
    result
  end
end