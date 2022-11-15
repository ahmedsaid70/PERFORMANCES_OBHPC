set datafile separator ";"
set xlabel 'Algorithms'                              # x-axis label
set ylabel 'Speed'                          # y-axis label
set style data histograms
set style fill solid 1.0 border -1
set style histogram clustered gap 1 title  offset character 0, 0, 0
stats 'gcc/O0/BASE.txt' matrix nooutput
set terminal png size 1000,700 enhanced font "Helvetica,20"
set xtics format ""




#reduc gcc
set title 'mesures of gcc compiler with O0 flag in REDUCTION operation'                       # plot title
set output 'graphs/gcc_o0.png'
plot "gcc/O0/BASE.txt" u STATS_size_x:key(1) title 'BASE', "gcc/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'

set title 'mesures of gcc compiler with O1 flag in REDUCTION operation'                       # plot title
set output 'graphs/gcc_o1.png'
plot "gcc/O1/BASE.txt" u STATS_size_x:key(1) title 'BASE', "gcc/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'

set title 'mesures of gcc compiler with O2 flag in REDUCTION operation'                       # plot title
set output 'graphs/gcc_o2.png'
plot "gcc/O2/BASE.txt" u STATS_size_x:key(1) title 'BASE', "gcc/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'

set title 'mesures of gcc compiler with O3 flag in REDUCTION operation'                       # plot title
set output 'graphs/gcc_o3.png'
plot "gcc/O3/BASE.txt" u STATS_size_x:key(1) title 'BASE', "gcc/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'

#clang
set title 'mesures of clang compiler with O1 flag in REDUCTION operation'                       # plot title
set output 'graphs/clang_o0.png'
plot "clang/O0/BASE.txt" u STATS_size_x:key(1) title 'BASE', "clang/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'

set title 'mesures of clang compiler with O1 flag in REDUCTION operation'                       # plot title
set output 'graphs/clang_o1.png'
plot "clang/O1/BASE.txt" u STATS_size_x:key(1) title 'BASE', "clang/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'

set title 'mesures of clang compiler with O2 flag in REDUCTION operation'                       # plot title
set output 'graphs/clang_o2.png'
plot "clang/O2/BASE.txt" u STATS_size_x:key(1) title 'BASE', "clang/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'

set title 'mesures of clang compiler with O3 flag in REDUCTION operation'                       # plot title
set output 'graphs/clang_o3.png'
plot "clang/O3/BASE.txt" u STATS_size_x:key(1) title 'BASE', "clang/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL88'


#gcc vs clang o0
set title 'comparaison between GCC and CLANG compilers performances in the BASE algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_BASE.png'
plot "gcc/O0/BASE.txt" u STATS_size_x:key(1) title 'gcc BASE', "clang/O0/BASE.txt" u STATS_size_x:key(1) title 'clang BASE'

set title 'comparaison between GCC and CLANG compilers performances in the UNROLL8 algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_UNROLL8.png'
plot "gcc/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL', "clang/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL'

#gcc vs clang o1

set title 'comparaison between GCC and CLANG compilers performances in the BASE algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_BASE.png'
plot "gcc/O1/BASE.txt" u STATS_size_x:key(1) title 'gcc BASE', "clang/O1/BASE.txt" u STATS_size_x:key(1) title 'clang BASE'

set title 'comparaison between GCC and CLANG compilers performances in the UNROLL8 algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_UNROLL8.png'
plot "gcc/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL', "clang/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL'

#gcc vs clang o2

set title 'comparaison between GCC and CLANG compilers performances in the BASE algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_BASE.png'
plot "gcc/O2/BASE.txt" u STATS_size_x:key(1) title 'gcc BASE', "clang/O2/BASE.txt" u STATS_size_x:key(1) title 'clang BASE'

set title 'comparaison between GCC and CLANG compilers performances in the UNROLL8 algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_UNROLL8.png'
plot "gcc/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL', "clang/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL'

#gcc vs clang o3

set title 'comparaison between GCC and CLANG compilers performances in the BASE algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_BASE.png'
plot "gcc/O3/BASE.txt" u STATS_size_x:key(1) title 'gcc BASE', "clang/O3/BASE.txt" u STATS_size_x:key(1) title 'clang BASE'

set title 'comparaison between GCC and CLANG compilers performances in the UNROLL8 algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_UNROLL8.png'
plot "gcc/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL', "clang/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL'
