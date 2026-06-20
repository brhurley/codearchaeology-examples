NB. Recursion with $: (self-reference) and if./do./else./end.
factorial =: 3 : 'if. y <= 1 do. 1 else. y * $: y - 1 end.'

echo factorial 5
echo factorial 0

NB. J also has a built-in factorial verb: !
echo ! 5
