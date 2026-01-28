def number_to_ws(n):
    sign = ' ' if n >= 0 else '\t'
    binary = ''
    while n > 0:
        binary = (' ' if n % 2 == 0 else '\t') + binary
        n //= 2
    return sign + (binary or ' ') + '\n'

def push(n): return '  ' + number_to_ws(n)
def output_char(): return '\t\n  '
def end(): return '\n\n\n'

message = "Hello, World!"
program = ''.join(push(ord(c)) + output_char() for c in message) + end()

with open('hello.ws', 'w') as f:
    f.write(program)
