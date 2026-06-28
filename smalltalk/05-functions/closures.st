"makeCounter returns a block that captures its own private 'count'.
 Each returned counter keeps its state between calls."
| makeCounter counter |

makeCounter := [
    | count |
    count := 0.
    "This inner block closes over 'count' and increments it."
    [ count := count + 1. count ]
].

counter := makeCounter value.
(counter value) displayNl.
(counter value) displayNl.
(counter value) displayNl.
