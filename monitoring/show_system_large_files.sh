#!/bin/sh -e

find / -type f -exec ls -al {} \; | sort -nr -k5 | head -n 25^C
