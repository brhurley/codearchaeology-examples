NB. while. loop — compute a factorial step by step
factorial =: 3 : 0
n =. y
acc =. 1
while. n > 1 do.
  acc =. acc * n
  n =. n - 1
end.
acc
)

NB. for_i. loop with continue. — sum the even numbers below y
sumeven =: 3 : 0
total =. 0
for_i. i. y do.
  if. 1 = 2 | i do. continue. end.
  total =. total + i
end.
total
)

echo factorial 5
echo sumeven 10
