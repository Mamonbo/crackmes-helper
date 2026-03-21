import re

while True:
    read_line=input()
    m=re.search('<title>(.*)</title>',read_line)
    if m:
        print(m.group(1))
        break
