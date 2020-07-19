PWD=`pwd`
FILE_CHANGE=`git status -s | awk '{print $2}'`
for value in $FILE_CHANGE;
do
  echo $value;
  zip -r $value.zip $PWD"/"$value
done
