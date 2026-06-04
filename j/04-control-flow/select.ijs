NB. Map a number to a word using select. / case.
letter =: 3 : 0
select. y
  case. 1 do. 'one'
  case. 2 do. 'two'
  case. 3 do. 'three'
  case. do. 'many'
end.
)

echo letter 1
echo letter 2
echo letter 3
echo letter 9
