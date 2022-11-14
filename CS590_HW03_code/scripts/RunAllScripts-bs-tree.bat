@echo OFF
set name="bs-tree-random"
    cd output-%name%
    wt --title %name% bash script-%name%.sh

set name="bs-tree-sorted-ascending"
    cd output-%name%
    wt --title %name% bash script-%name%.sh

set name="bs-tree-sorted-descending"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
