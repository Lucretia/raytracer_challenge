Feature: Canvas

    Canvas tests
    Scenario: Creating a canvas
        Given c ← canvas(10, 20)
        Then c.width = 10
            And c.height = 20
            And every pixel of c is color(0, 0, 0)

    # Modify the coord's to be 1-based, not 0-based.
    Scenario: Writing pixels to a canvas
        Given c ← canvas(10, 20)
            And red ← color(1, 0, 0)
        When write_pixel(c, 3, 4, red)
        Then pixel_at(c, 3, 4) = red
