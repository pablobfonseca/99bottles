# frozen_string_literal: true

class Verse
  RESET_TEXT      = "99 bottles"
  ONE_BOTTLE      = "1 bottle"
  NO_MORE_BOTTLES = "No more bottles"

  def initialize(number)
    @number = number
  end

  def first_sentence
    case number
    when 0 then NO_MORE_BOTTLES
    when 1 then ONE_BOTTLE
    else
      number_with_bottles do |bottles|
        "#{number} #{bottles}"
      end
    end
  end

  def second_sentence
    case number
    when 0 then NO_MORE_BOTTLES.downcase
    when 1 then ONE_BOTTLE
    else
      number_with_bottles do |bottles|
        "#{number} #{bottles}"
      end
    end
  end

  def third_sentence
    case number
    when 0 then "Go to the store and buy some more"
    when 1 then "Take it down and pass it around"
    else "Take one down and pass it around"
    end
  end

  def last_sentence
    minus = number - 1
    case minus
    when -1 then RESET_TEXT
    when 0 then NO_MORE_BOTTLES.downcase
    when 1 then ONE_BOTTLE
    else
      number_with_bottles do |bottles|
        "#{minus} #{bottles}"
      end
    end
  end

  private
  attr_reader :number

  def number_with_bottles
    yield "bottles"
  end
end
