set -e

# rename font so it has correct style suffix
cp Suwannaphum.ttf ../fonts/Suwannaphum-Regular.ttf

# Update nametable to reflect new filename
fontbakery-nametable-from-filename.py ../fonts/Suwannaphum-Regular.ttf


fontbakery-update-version.py ../fonts/Suwannaphum-Regular.ttf.fix 2.00 2.001


rm ../fonts/Suwannaphum-Regular.ttf
rm ../fonts/Suwannaphum-Regular.ttf.fix

font=../fonts/Suwannaphum-Regular.ttf.fix.fix
mv $font "${font%.*.fix}"