⍝ ── Writing a file ──────────────────────────────────────────
nl   ← ⎕UCS 10                       ⍝ newline character (LF) from its code
text ← 'APL file I/O', nl, 'Line two', nl, 'Line three'

⍝ Open for writing, send the byte vector with fwrite, then close
handle ← 'w' ⎕FIO.fopen 'notes.txt'      ⍝ 'w' = open for writing
wrote  ← (⎕UCS text) ⎕FIO.fwrite handle  ⍝ ⎕UCS turns chars into bytes
closed ← ⎕FIO.fclose handle              ⍝ flush and close the handle
⎕← 'Wrote ', (⍕ ≢ text), ' characters to notes.txt'

⍝ ── Reading a file ──────────────────────────────────────────
⍝ ⎕FIO.read_file returns a byte vector; ⎕UCS turns it back into text
raw ← ⎕UCS ⎕FIO.read_file 'notes.txt'
⎕← 'File contents:'
⎕← raw

⍝ ── Processing the contents ─────────────────────────────────
⍝ With the text in an array, ordinary primitives answer questions
⎕← 'Total characters: ', ⍕ ≢ raw
⎕← 'Number of lines: ', ⍕ 1 + +/ raw = nl
)OFF
