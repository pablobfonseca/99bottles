class Bottles:
    def verse(self, number):
        return f"""{number} bottles of beer on the wall, {number} bottles of beer.
Take one down and pass it around, {self.bottle_text(number)} of beer on the wall."""


    def bottle_text(self, number):
        minus = number - 1
        if minus == 1:
            return "1 bottle"
        else:
            return f"{minus} bottles"



