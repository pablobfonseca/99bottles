# frozen_string_literal: true

require_relative './sentence_base'

class FourthSentence < SentenceBase
  RESET_BOTTLES = "99 bottles"

  def initialize(number)
    super
    @minus = number - 1
  end

  def render
    return RESET_BOTTLES if zero?
    return no_more_bottles.downcase if minus == 0
    return single_bottle if minus == 1

    "#{minus} bottles"
  end

  private
  attr_reader :minus
end
