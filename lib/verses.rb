class Verses
  def initialize(numbers)
    @numbers = numbers
  end

  def render
    max.downto(min).map do |number|
      yield number
    end.join("\n")
  end

  private
  attr_reader :numbers

  def min
    numbers.min
  end

  def max
    numbers.max
  end
end
