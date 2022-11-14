for d in */ ; do
    echo "$d"
    cd "$d"
    mkdir -p extracted
for f in ./*txt
do
grep -E -o "\(sort\): [0-9]+ms real" $f |  grep -oe '\([0-9.]*\)' >> extracted/$f
echo "$f"
done

cd ./extracted
for file in *.txt
do
  mv "$file" "${file/.txt/-extracted.txt}"
done

cd ./../..
done