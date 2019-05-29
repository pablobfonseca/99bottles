# frozen_string_literal: true

require_relative './sentence_base'

class ThirdSentence < SentenceBase
  def render
    return "Go to the store and buy some more" if zero?
    "Take #{handle_one_text} down and pass it around"
  end

  private

  def handle_one_text
    return "it" if one?

    "one"
  end
end
