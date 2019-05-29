# frozen_string_literal: true

require_relative './sentence_base'

class SecondSentence < SentenceBase
  def render
    return no_more_bottles.downcase if zero?
    return single_bottle if one?
    "#{number} bottles"
  end
end
