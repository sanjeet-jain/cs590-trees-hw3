echo "creating scripts"
make
echo 
name="rb-tree-random"

cp scripts/output/* output-$name
echo "Done"

echo "creating scripts"
echo 
name="rb-tree-sorted-ascending"

cp scripts/output/* output-$name
echo "Done"


echo "creating scripts"
echo 
name="rb-tree-sorted-descending"
echo $name

cp scripts/output/* output-$name
echo "Done"


echo "creating scripts"
echo 
name="bs-tree-random"

cp scripts/output/* output-$name
echo "Done"

echo "creating scripts"
echo 
name="bs-tree-sorted-ascending"

cp scripts/output/* output-$name
echo "Done"


echo "creating scripts"
echo 
name="bs-tree-sorted-descending"

cp scripts/output/* output-$name
echo "Done"