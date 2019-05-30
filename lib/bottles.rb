class Bottles
  def verses(a, b)
    a.downto(b).map {|number| verse(number)}.join("\n")
  end

  def verse(number)
    <<-VERSE
#{first_sentence(number)} of beer on the wall, #{second_sentence(number)} of beer.
#{third_sentence(number)}, #{last_sentence(number)} of beer on the wall.
    VERSE
  end

  private

  def first_sentence(number)
    return "No more bottles" if number == 0
    bottles = number == 1 ? "bottle" : "bottles"
    return "#{number} #{bottles}"
  end

  def second_sentence(number)
    return "no more bottles" if number == 0
    bottles = number == 1 ? "bottle" : "bottles"
    "#{number} #{bottles}"
  end

  def third_sentence(number)
    return "Go to the store and buy some more" if number == 0
    it_or_one = number == 1 ? "it" : "one"
    "Take #{it_or_one} down and pass it around"
  end

  def last_sentence(number)
    minus = number - 1

    return "99 bottles" if number == 0
    return "no more bottles" if minus == 0
    return "1 bottle" if number == 1 || minus == 1

    "#{minus} bottles"
  end
end
