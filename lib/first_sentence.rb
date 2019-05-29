# frozen_string_literal: true

require_relative './sentence_base'

class FirstSentence < SentenceBase
  def render
    return no_more_bottles if zero?
    return single_bottle if one?

    "#{number} bottles"
  end
end
