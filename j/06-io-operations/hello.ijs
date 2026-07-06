NB. These take a plain (unboxed) file name
lines fwrite 'fruit.txt'      NB. same as: lines 1!:2 <'fruit.txt'
data =: fread 'fruit.txt'     NB. same as: 1!:1 <'fruit.txt'
extra fappend 'fruit.txt'     NB. same as: extra 1!:3 <'fruit.txt'
