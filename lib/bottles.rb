class Bottles
  def verse(number)
    <<-VERSE
#{number} #{number == 1 ? "bottle" : "bottles"} of beer on the wall, #{handle_sentence(number)} of beer.
Take #{number == 1 ? "it" : "one"} down and pass it around, #{handle_minus(number)} of beer on the wall.
    VERSE
  end

  private

  def handle_sentence(number)
    return "1 bottle" if number == 1

    "#{number} bottles"
  end

  def handle_minus(number)
    minus = number - 1

    return "no more bottles" if minus == 0
    return "1 bottle" if number == 1 || minus == 1

    "#{minus} bottles"
  end
end
