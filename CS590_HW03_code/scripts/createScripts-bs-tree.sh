echo "creating scripts"

echo 
name="bs-tree-random"
echo $name
sudo rm -r output-$name
mkdir -p output-$name
echo 'cd ..' >> output-$name/script-$name.sh
echo 'echo "'$name' working" ' >> output-$name/script-$name.sh
for j in 50000 100000 250000 500000 1000000 2500000 5000000
do
for k in {1..10}
do 
echo './hw3 '$j' 0 0 >> output-'$name'/'$name'-'$j'.txt' >> output-$name/script-$name.sh
echo 'echo "'$name' '$j' done" '>> output-$name/script-$name.sh
done
done
echo 'read -p "Press enter to continue"' >> output-$name/script-$name.sh
cp scripts/output/* output-$name
echo "Done"