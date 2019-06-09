class Bottles:
    def verse(self, number):
        return f"""{self.bottle_text(number).capitalize()} of beer on the wall, {self.bottle_text(number)} of beer.
{self.action_text(number)}, {self.bottle_text(number - 1)} of beer on the wall."""


    def pronoun(self, number):
        if number == 1:
            return "it"
        else:
            return "one"

    def action_text(self, number):
        if number == 0:
            return "Go to the store and buy some more"
        else:
            return f"Take {self.pronoun(number)} down and pass it around"



    def bottle_text(self, number):
        if number == 1:
            return "1 bottle"
        if number < 0:
            return "99 bottles"
        elif number == 0:
            return "no more bottles"
        else:
            return f"{number} bottles"



