#!/usr/bin/env python
#export PYTHONSTARTUP='/usr/local/bin/python-tab-completion.py' in /etc/bashrc
#not test in python3

import os,sys
import readline
import rlcompleter
import atexit

# tab completion
readline.parse_and_bind('tab: complete')

# history file
histfile = os.path.join(os.environ['HOME'], '.pythonhistory')
try:
    readline.read_history_file(histfile)
except IOError:
    pass
atexit.register(readline.write_history_file, histfile)

del os, histfile, readline, rlcompleter
