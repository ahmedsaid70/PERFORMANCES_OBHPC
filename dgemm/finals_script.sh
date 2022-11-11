sudo cpupower frequency-set -d 2GHZ
sudo cpupower frequency-set -u 2GHZ
sudo cpupower -c 2 frequency-info
make CC=gcc

taskset -c 2 cat ./dgemm 100 100
cat /proc/cpuinfo >> les_information_sur_le_cpu.txt

# Compilateur GCC optimization O3

mkdir gcc/O3 -p
make CC=gcc OFLAGS=-O3
taskset -c 2 ./dgemm 100 100 | sed -n 2p >> gcc/O3/IJK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 3p >> gcc/O3/IKJ.txt
taskset -c 2 ./dgemm 100 100 | sed -n 4p >> gcc/O3/IEK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 5p >> gcc/O3/UNROLL.txt
taskset -c 2 ./dgemm 100 100 | sed -n 6p >> gcc/O3/CBLAS.txt

# Compilateur GCC optimization O2
mkdir gcc/O2 -p
make CC=gcc OFLAGS=-O2

taskset -c 2 ./dgemm 100 100 | sed -n 2p >> gcc/O2/IJK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 3p >> gcc/O2/IKJ.txt
taskset -c 2 ./dgemm 100 100 | sed -n 4p >> gcc/O2/IEK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 5p >> gcc/O2/UNROLL.txt
taskset -c 2 ./dgemm 100 100 | sed -n 6p >> gcc/O2/CBLAS.txt

# Compilateur GCC optimization O1
mkdir gcc/O1 -p
make CC=gcc OFLAGS=-O1

taskset -c 2 ./dgemm 100 100 | sed -n 2p >> gcc/O1/IJK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 3p >> gcc/O1/IKJ.txt
taskset -c 2 ./dgemm 100 100 | sed -n 4p >> gcc/O1/IEK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 5p >> gcc/O1/UNROLL.txt
taskset -c 2 ./dgemm 100 100 | sed -n 6p >> gcc/O1/CBLAS.txt

# Compilateur GCC optimization O0
mkdir gcc/O0 -p
make CC=gcc OFLAGS=-O0

taskset -c 2 ./dgemm 100 100 | sed -n 2p >> gcc/O0/IJK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 3p >> gcc/O0/IKJ.txt
taskset -c 2 ./dgemm 100 100 | sed -n 4p >> gcc/O0/IEK.txt
taskset -c 2 ./dgemm 100 100 | sed -n 5p >> gcc/O0/UNROLL.txt
taskset -c 2 ./dgemm 100 100 | sed -n 6p >> gcc/O0/CBLAS.txt



# gcc -O1
make
