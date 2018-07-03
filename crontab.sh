#!/usr/bin/env bash

# minute (0 - 59)
# hour (0 - 23)
# day of month (1 - 31)
# month (1 - 12 or jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec)
# day of week (0 - 6 or sun,mon,tue,wed,thu,fri,sat)
# path-to-command-to-be-executed
# Note: ". $HOME/.bash_profile; " means "source the current user's bash profile (prior to the job task execution)"

0 23 * * * . $HOME/.bash_profile; /path/to/command/or/script/to/run
