# Create your grading script here

CPATH = ".:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar"
set -e

rm -rf student-submission
git clone $1 student-submission

cp GradeServer.java grade/

cd grade 

javac -cp $CPATH *.java

if [[$? -eq 0]]
then
    echo "Compile Succeeded"
else
    echo "Your program didn't compile"
    exit 1
fi
