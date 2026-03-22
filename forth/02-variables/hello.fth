VARIABLE counter       \ allocate a cell named 'counter'
0 counter !            \ store 0 into counter
counter @ .            \ fetch and print: 0
5 counter !            \ store 5
counter @              \ fetch: now 5 is on the stack
