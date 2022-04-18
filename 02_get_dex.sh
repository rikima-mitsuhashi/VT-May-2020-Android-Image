#/bin/sh

cd malware


for f in *
do
mv "$f" "$f.zip"
mkdir $f
mv $f.zip $f
cd $f
unzip $f.zip classes.dex
mv classes.dex $f.dex
mv $f.dex	 ../../dex 
cd ..
rm -rf $f
done

