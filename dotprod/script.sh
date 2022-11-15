sudo cpupower frequency-set -d 2GHZ
sudo cpupower frequency-set -u 2GHZ
sudo cpupower -c 2 frequency-info
make clean
dotprod="gcc/O0";
#making directory
mkdir "$dotprod" -p

make CC=gcc OFLAGS=-O0

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="gcc/O1";
#making directory
mkdir "$dotprod" -p


make CC=gcc OFLAGS=-O1

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="gcc/O2";
#making directory
mkdir "$dotprod" -p


make CC=gcc OFLAGS=-O2

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean




dotprod="gcc/O3";
#making directory
mkdir "$dotprod" -p


make CC=gcc OFLAGS=-O3

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean
dotprod="gcc/O0";
#making directory
mkdir "$dotprod" -p

make CC=gcc OFLAGS=-O0

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="gcc/O1";
#making directory
mkdir "$dotprod" -p


make CC=gcc OFLAGS=-O1

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="gcc/O2";
#making directory
mkdir "$dotprod" -p


make CC=gcc OFLAGS=-O2

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean




dotprod="gcc/O3";
#making directory
mkdir "$dotprod" -p


make CC=gcc OFLAGS=-O3

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean























make clean
dotprod="clang/O0";
#making directory
mkdir "$dotprod" -p

make CC=clang OFLAGS=-O0

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="clang/O1";
#making directory
mkdir "$dotprod" -p


make CC=clang OFLAGS=-O1

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="clang/O2";
#making directory
mkdir "$dotprod" -p


make CC=clang OFLAGS=-O2

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean




dotprod="clang/O3";
#making directory
mkdir "$dotprod" -p


make CC=clang OFLAGS=-O3

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean
dotprod="clang/O0";
#making directory
mkdir "$dotprod" -p

make CC=clang OFLAGS=-O0

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="clang/O1";
#making directory
mkdir "$dotprod" -p


make CC=clang OFLAGS=-O1

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


dotprod="clang/O2";
#making directory
mkdir "$dotprod" -p


make CC=clang OFLAGS=-O2

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean




dotprod="clang/O3";
#making directory
mkdir "$dotprod" -p


make CC=clang OFLAGS=-O3

taskset -c 2 ./dotprod 100 100 > "$dotprod"/all.txt

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$dotprod"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
echo "$p" > "$dotprod"/"$y".txt
done
rm "$dotprod"/all.txt
make clean


mkdir graphs
gnuplot script.p






















