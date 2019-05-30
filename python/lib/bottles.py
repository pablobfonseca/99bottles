class Bottles:
    def verse(self, number):
        return f"""{self.bottle_text(number)} of beer on the wall, {self.bottle_text(number)} of beer.
Take {self.pronoun(number)} down and pass it around, {self.bottle_text(number - 1)} of beer on the wall."""


    def pronoun(self, number):
        if number == 1:
            return "it"
        else:
            return "one"


    def bottle_text(self, number):
        if number == 1:
            return "1 bottle"
        elif number == 0:
            return "no more bottles"
        else:
            return f"{number} bottles"



