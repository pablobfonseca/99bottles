FirstSentence = Struct.new(:number) do
  def render
    return "No more bottles" if number == 0
    bottles = number == 1 ? "bottle" : "bottles"
    return "#{number} #{bottles}"
  end
end

SecondSentence = Struct.new(:number) do
  def render
    return "no more bottles" if number == 0
    bottles = number == 1 ? "bottle" : "bottles"
    "#{number} #{bottles}"
  end
end

ThirdSentence = Struct.new(:number) do
  def render
    return "Go to the store and buy some more" if number == 0
    it_or_one = number == 1 ? "it" : "one"
    "Take #{it_or_one} down and pass it around"
  end
end

LastSentence = Struct.new(:number) do
  def render
    minus = number - 1

    return "99 bottles" if number == 0
    return "no more bottles" if minus == 0
    return "1 bottle" if number == 1 || minus == 1

    "#{minus} bottles"
  end
end

class Bottles
  def song
    verses(99, 0)
  end

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
    FirstSentence.new(number).render
  end

  def second_sentence(number)
    SecondSentence.new(number).render
  end

  def third_sentence(number)
    ThirdSentence.new(number).render
  end

  def last_sentence(number)
    LastSentence.new(number).render
  end
end
