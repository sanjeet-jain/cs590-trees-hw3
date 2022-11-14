echo "creating scripts"
make
echo 
name="rb-tree-random"
echo $name
echo "root"|sudo -S rm -r output-$name
mkdir -p output-$name
echo 'cd ..' >> output-$name/script-$name.sh
echo 'echo "'$name' working" ' >> output-$name/script-$name.sh
for j in 50000 100000 250000 500000 1000000 2500000 5000000
do
for k in {1..10}
do 
echo './hw3 '$j' 0 1 >> output-'$name'/'$name'-'$j'.txt' >> output-$name/script-$name.sh
echo 'echo "'$name' '$j' done" '>> output-$name/script-$name.sh
done
done
echo 'read -p "Press enter to continue"' >> output-$name/script-$name.sh
cp scripts/output/* output-$name
echo "Done"

echo "creating scripts"
make
echo 
name="rb-tree-sorted-ascending"
echo $name
echo "root"|sudo -S rm -r output-$name
mkdir -p output-$name
echo 'cd ..' >> output-$name/script-$name.sh
echo 'echo "'$name' working" ' >> output-$name/script-$name.sh
for j in 50000 100000 250000 500000 1000000 2500000 5000000
do
for k in {1..10}
do 
echo './hw3 '$j' 1 1 >> output-'$name'/'$name'-'$j'.txt' >> output-$name/script-$name.sh
echo 'echo "'$name' '$j' done" '>> output-$name/script-$name.sh
done
done
echo 'read -p "Press enter to continue"' >> output-$name/script-$name.sh
cp scripts/output/* output-$name
echo "Done"


echo "creating scripts"
make
echo 
name="rb-tree-sorted-descending"
echo $name
echo "root"|sudo -S rm -r output-$name
mkdir -p output-$name
echo 'cd ..' >> output-$name/script-$name.sh
echo 'echo "'$name' working" ' >> output-$name/script-$name.sh
for j in 50000 100000 250000 500000 1000000 2500000 5000000
do
for k in {1..10}
do 
echo './hw3 '$j' -1 1 >> output-'$name'/'$name'-'$j'.txt' >> output-$name/script-$name.sh
echo 'echo "'$name' '$j' done" '>> output-$name/script-$name.sh
done
done
echo 'read -p "Press enter to continue"' >> output-$name/script-$name.sh
cp scripts/output/* output-$name
echo "Done"