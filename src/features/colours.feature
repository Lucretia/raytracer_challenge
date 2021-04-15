Feature: Colours

    Colour tuple tests.
    Scenario: Colors are (red, green, blue) tuples
        Given c ← color(-0.5, 0.4, 1.7)
        Then c.red = -0.5
            And c.green = 0.4
            And c.blue = 1.7
