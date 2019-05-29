# frozen_string_literal: true

class SentenceBase
  def initialize(number)
    @number = number
  end

  protected
  attr_reader :number

  def single_bottle
    "1 bottle"
  end

  def no_more_bottles
    "No more bottles"
  end

  def zero?
    number == 0
  end

  def one?
    number == 1
  end
end
