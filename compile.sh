# todo create a github actions that on push tests to make sure that the sample.py script (currently in gitignore) will compile to exe and run

filename=$1
filenameNoExt="${filename%%.*}"
echo "$filenameNoExt"
pip install pyinstaller
pyinstaller $filename -F
mv dist/$filenameNoExt ./
rm -r build/ dist/
rm $filenameNoExt.spec
