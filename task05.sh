#!/bin/bash





tr ' ' '\n' < file.txt| sort | uniq -c | while read cnt num; do printf 'The number %s appears %s times in the file\n' "$num" "$cnt"; done