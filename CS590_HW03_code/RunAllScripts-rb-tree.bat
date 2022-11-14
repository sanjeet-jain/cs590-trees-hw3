@echo OFF
set name="rb-tree-random"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
cd ./..
set name="rb-tree-sorted-ascending"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
cd ./..
set name="rb-tree-sorted-descending"
    cd output-%name%
    wt --title %name% bash script-%name%.sh
cd ./..
