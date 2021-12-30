import sys
from contextlib import redirect_stdout

with open('payload', 'w') as f:
    with redirect_stdout(f):
        sys.stdout.buffer.write(b'A' * 48)


