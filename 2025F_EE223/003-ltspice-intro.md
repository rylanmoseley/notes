\newpage
# LTSpice AC Analysis

- When you place an element, the current goes from the top down by default
    - each rotation (ctrl + r) rotates clockwise
- Hovering over a node tells you the name
- voltage source -> advanced -> select `SINE`, `COSINE`, etc and enter frequency, amplitude, initial phase
- configure analysis -> AC analysis
    - linear
        - one point
            - enter the same value for start and stop
            - does *not* show current direction
        - two points
            - enter a slightly higher frequency for the second point
            - use the current tool to detect direction of current (the current value is positive or negative with respect to this direction)
    - enter the frequency as both the start and stop
    - place the element
    - run
- right click the title of a graph -> delete this trace, resets and allows you to inspect a new element
