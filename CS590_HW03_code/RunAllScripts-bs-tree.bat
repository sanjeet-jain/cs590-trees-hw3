@echo OFF
set name="bs-tree-random"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
PAUSE