
mkdir -p extracted
cd extracted
rm -r *
mkdir -p extracted-sort-time
cd ./..
for f in ./*txt
do
grep -E -o "\(sort\): [0-9]+ms real" $f |  grep -oe '\([0-9.]*\)' >> extracted/extracted-sort-time/$f
echo "$f"
done

cd ./extracted/extracted-sort-time
for file in *.txt
do
  mv "$file" "${file/.txt/-extracted-sorting-time.txt}"
done

# get size counter
cd ./../
mkdir -p extracted-sizes
cd ./..
for f in ./*txt
do
grep -E -o "\New size: [0-9]+" $f |  grep -oe '\([0-9.]*\)' >> extracted/extracted-sizes/$f
echo "$f"
done

cd ./extracted/extracted-sizes
for file in *.txt
do
  mv "$file" "${file/.txt/-extracted-counter-sizes.txt}"
done

# get duplicate counter
cd ./../
mkdir -p extracted-duplicates
cd ./..
for f in ./*txt
do
grep -E -o "Duplicates: [0-9]+" $f |  grep -oe '\([0-9.]*\)' >> extracted/extracted-duplicates/$f
echo "$f"
done

cd ./extracted/extracted-duplicates
for file in *.txt
do
  mv "$file" "${file/.txt/-extracted-counter-duplicates.txt}"
done

cd ./../
