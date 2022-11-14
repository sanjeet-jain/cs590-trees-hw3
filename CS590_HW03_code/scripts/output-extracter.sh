for d in */
do
    cd $d
    bash getExtractedFiles.sh
    bash getExtractedFiles-rb.sh
    cd ..
done
