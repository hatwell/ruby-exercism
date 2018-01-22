module BookKeeping
  VERSION = 1
end

class Grains
  def self.square(number)
    number > 0 && number < 65 ?  2**(number-1) : raise(ArgumentError)
  end

  def self.total
    counter = 0
    total = 0
    until counter == 64
      total += 2 ** counter
      counter +=1
    end
    return total
  end
end