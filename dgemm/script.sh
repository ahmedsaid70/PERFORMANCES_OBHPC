sudo cpupower frequency-set -d 2GHZ
sudo cpupower frequency-set -u 2GHZ
sudo cpupower -c 2 frequency-info
make CC=gcc

#taskset -c 2 cat ./dgemm 100 100
#cat /proc/cpuinfo > les_information_sur_le_cpu.txt

# Compilateur GCC optimization O3
make clean

gcc_o3="gcc/O3";
#making directory
mkdir "$gcc_o3" -p

#compiling
make CC=gcc OFLAGS=-O3
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$gcc_o3"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$gcc_o3"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$gcc_o3"/"$y".txt
done
rm "$gcc_o3"/all.txt
make clean



gcc_o2="gcc/O2";
#making directory
mkdir "$gcc_o2" -p

#compiling
make CC=gcc OFLAGS=-O2
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$gcc_o2"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$gcc_o2"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$gcc_o2"/"$y".txt
done
rm "$gcc_o2"/all.txt
make clean

gcc_o1="gcc/O1";
#making directory
mkdir "$gcc_o1" -p

#compiling
make CC=gcc OFLAGS=-O1
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$gcc_o1"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$gcc_o1"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$gcc_o1"/"$y".txt
done
rm "$gcc_o1"/all.txt

make clean

gcc_o0="gcc/O0";
#making directory
mkdir "$gcc_o0" -p

#compiling
make CC=gcc OFLAGS=-O0
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$gcc_o0"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$gcc_o0"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$gcc_o0"/"$y".txt
done
rm "$gcc_o0"/all.txt

make clean


clang_o3="clang/O3";
#making directory
mkdir "$clang_o3" -p

#compiling
make CC=clang OFLAGS=-O3
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$clang_o3"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$clang_o3"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$clang_o3"/"$y".txt
done
rm "clang_o3"/all.txt
make clean



clang_o2="clang/O2";
#making directory
mkdir "$clang_o2" -p

#compiling
make CC=clang OFLAGS=-O2
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$clang_o2"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$clang_o2"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$clang_o2"/"$y".txt
done
rm "clang_o2"/all.txt
make clean


clang_o1="clang/O1";
#making directory
mkdir "$clang_o1" -p

#compiling
make CC=clang OFLAGS=-O1
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$clang_o1"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$clang_o1"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$clang_o1"/"$y".txt
done
rm "clang_o1"/all.txt
make clean

clang_o0="clang/O0";
#making directory
mkdir "$clang_o0" -p

#compiling
make CC=clang OFLAGS=-O0
#runing the program on the cpu2 and saving the output in a file
taskset -c 2 ./dgemm 100 100 > "$clang_o0"/all.txt
#puting results in separate files

#sed command with 1d option will move the iterator to the second line in the file
sed 1d "$clang_o0"/all.txt | while read p; do
#  saving the first word of the line(p) in variable y
  y=$(echo $p | awk '{print $1}' | cut -d \; -f 1)
#  saving the line in faline named of the first line
  echo "$p" > "$clang_o0"/"$y".txt
done
rm "clang_o0"/all.txt
make clean


