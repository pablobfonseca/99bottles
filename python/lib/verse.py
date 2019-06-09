class Verse:
    def first_sentence(self, number):
        if number == 0:
            return self.no_more_bottles(capitalize=True)
        elif number == 1:
            return self.one_bottle()
        else:
            return f"{number} bottles"

    def second_sentence(self, number):
        if number == 0:
            return self.no_more_bottles()
        elif number == 1:
            return self.one_bottle()
        else:
            return f"{number} bottles"

    def third_sentence(self, number):
        if number == 0:
            return "Go to the store and buy some more"
        elif number == 1:
            return "Take it down and pass it around"
        else:
            return "Take one down and pass it around"

    def last_sentence(self, number):
        minus = number - 1
        if minus < 0:
            return "99 bottles"
        elif minus == 0:
            return self.no_more_bottles()
        elif minus == 1:
            return self.one_bottle()
        else:
            return f"{minus} bottles"

    def no_more_bottles(self, capitalize=False):
        text= "no more bottles"

        if capitalize:
            return text.capitalize()
        else:
            return text

    def one_bottle(self):
        return "1 bottle"
