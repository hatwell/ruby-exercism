module BookKeeping
  VERSION = 1
end

module Math
end

class Prime

  def self.prime?(number)
    starter = (number / 2).round
    while starter > 1 do
      if number % starter == 0
        return false
      end
      starter -= 1
    end
    true
  end

  def self.nth(number)
    raise(ArgumentError) if number == 0
    primes = []
    counter = 2
    until primes.length >= number
      primes.push(counter) if prime?(counter)
      counter += 1
    end
    primes.last
  end


end
