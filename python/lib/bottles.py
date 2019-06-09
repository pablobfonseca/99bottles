from verse import Verse


class Bottles:
    def verse(self, number):
        return f"""{self.first_sentence(number).capitalize()} of beer on the wall, {self.second_sentence(number)} of beer.
{self.third_sentence(number)}, {self.last_sentence(number)} of beer on the wall."""

    def verses(self, init, final):
        verse_list = [self.verse(number) for number in range(init, final-1, -1)]
        return "\n".join(verse_list)

    def song(self):
        return self.verses(99, 0)

    def first_sentence(self, number):
        return Verse().first_sentence(number)

    def second_sentence(self, number):
        return Verse().second_sentence(number)

    def third_sentence(self, number):
        return Verse().third_sentence(number)

    def last_sentence(self, number):
        return Verse().last_sentence(number)
