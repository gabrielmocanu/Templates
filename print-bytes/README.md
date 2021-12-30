# Print bytes script

Python3 script to print bytes into `payload` file.

You need to fill the buffer with the wanted bytes and run it:
`python3 print-bytes.py`

I did this script because always I had to remember this command
to generate my payload in exploit exercices:

`python3 -c "import sys; sys.stdout.buffer.write(b'A' * 48)" > payload`

