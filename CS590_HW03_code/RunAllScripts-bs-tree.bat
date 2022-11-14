@echo OFF
set name="bs-tree-random"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
cd ./..
set name="bs-tree-sorted-ascending"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
cd ./..
set name="bs-tree-sorted-descending"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
cd ./..
