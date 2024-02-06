#!/python
""" Append number of hours to each time range in the input. Reads from stdin.

    Used to calculate hours I spend on stuff, which I track in my log files.

    Example usage:

        $ cat /dev/clipboard | python3 hours.py
"""

import sys
import re

rg = re.compile(r'\b(\d{3,4})\s*-\s*(\d{3,4})\b')

def parse_time(time_str) -> int:
    """ Returns time in minutes from midnight """
    if len(time_str) == 3:
        time_str = '0' + time_str
    hours = int(time_str[:2])
    minutes = int(time_str[2:])
    return hours * 60 + minutes


def duration(start, end) -> float:
    """ Returns time in hours """
    if end < start:
        end += 12 * 60
    return (end - start) / 60


total = 0
for line in sys.stdin:
    line = line.rstrip()
    matches = rg.findall(line)
    if not matches:
        print(line)
    else:
        for match in matches:
            start = parse_time(match[0])
            end = parse_time(match[1])
            hours = duration(start, end)
            total += hours
            print(f'{line} : {hours:.1f}')
print(f'{total:.1f}')
