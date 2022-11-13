# Create your grading script here

CPATH=".;./lib/hamcrest-core-1.3.jar;./lib/junit-4.13.2.jar"

rm -rf student-submission
git clone -q $1 student-submission/

FPATH=$(find student-submission/* -type f)

if [ $? -eq 0 ]
then   
    echo "Clone succeeded"
else
    echo "Repository not found"
    exit 1
fi

FFILE=$(basename $FPATH)

if [[ $FFILE == "ListExamples.java" ]]
then
    echo "File found"
else   
    echo "$FFILE is incorrect file name"
    exit 1
fi

FDIR=$(dirname $FPATH)

cp TestListExamples.java $FDIR
cp -r lib $FDIR
cd $FDIR

javac -cp $CPATH *.java

if [ $? -eq 0 ]
then
    echo "Compile succeeded"
else
    echo "Your program didn't compile"
    exit 1
fi

java -cp $CPATH org.junit.runner.JUnitCore TestListExamples