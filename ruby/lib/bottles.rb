require_relative './verse'

class Bottles
  def song
    verses(99, 0)
  end

  def verses(first_number, second_number)
    first_number.downto(second_number).map {|number| verse(number)}.join("\n")
  end

  def verse(number)
    <<-VERSE
#{first_sentence(number)} of beer on the wall, #{second_sentence(number)} of beer.
#{third_sentence(number)}, #{last_sentence(number)} of beer on the wall.
    VERSE
  end

  private

  def first_sentence(number)
    Verse.new(number).first_sentence
  end

  def second_sentence(number)
    Verse.new(number).second_sentence
  end

  def third_sentence(number)
    Verse.new(number).third_sentence
  end

  def last_sentence(number)
    Verse.new(number).last_sentence
  end
end
