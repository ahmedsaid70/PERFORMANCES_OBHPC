set datafile separator ";"
set xlabel 'Algorithms'                              # x-axis label
set ylabel 'Speed'                          # y-axis label
set style data histograms
set style fill solid 1.0 border -1
set style histogram clustered gap 1 title  offset character 0, 0, 0
stats 'gcc/O0/IEX.txt' matrix nooutput
set terminal png size 1000,700 enhanced font "Helvetica,20"
set xtics format ""

#gcc

    set title 'mesures of gcc compiler with O1 flag'                       # plot title
    set output 'graphs/gcc_o1.png'
    plot "gcc/O0/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "gcc/O0/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "gcc/O0/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "gcc/O0/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "gcc/O0/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "gcc/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

set title 'mesures of gcc compiler with O2 flag'                       # plot title
set output 'graphs/gcc_o2.png'
plot "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "gcc/O1/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "gcc/O1/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "gcc/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "gcc/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

set title 'mesures of gcc compiler with O3 flag'                       # plot title
set output 'graphs/gcc_o3.png'
plot "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "gcc/O1/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "gcc/O1/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "gcc/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "gcc/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

set title 'mesures of gcc compiler with O0 flag'                       # plot title
set output 'graphs/gcc_o0.png'
plot "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "gcc/O1/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "gcc/O1/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "gcc/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "gcc/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

#clang

set title 'mesures of clang compiler with O1 flag'                       # plot title
set output 'graphs/clang_o1.png'
plot "clang/O0/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "clang/O0/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "clang/O0/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "clang/O0/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "clang/O0/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "clang/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

set title 'mesures of clang compiler with O2 flag'                       # plot title
set output 'graphs/clang_o2.png'
plot "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "clang/O1/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "clang/O1/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "clang/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "clang/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

set title 'mesures of clang compiler with O3 flag'                       # plot title
set output 'graphs/clang_o3.png'
plot "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "clang/O1/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "clang/O1/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "clang/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "clang/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

set title 'mesures of clang compiler with O0 flag'                       # plot title
set output 'graphs/clang_o0.png'
plot "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ', "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'IKJ' , "clang/O1/IEX.txt" u STATS_size_x:key(1) title 'IEX' , "clang/O1/CBLAS.txt" u STATS_size_x:key(1) title 'CBLAS' , "clang/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'UNROLL4' , "clang/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'UNROLL8'

#gcc IJK

set title 'mesures of IJK algorithms with gcc compiler'                       # plot title
set output 'graphs/gcc_IJK.png'
plot "gcc/O0/IJK.txt" u STATS_size_x:key(1) title 'O0', "gcc/O1/IJK.txt" u STATS_size_x:key(1) title 'O1' , "gcc/O2/IJK.txt" u STATS_size_x:key(1) title 'O2' , "gcc/O3/IJK.txt" u STATS_size_x:key(1) title 'O3'

#gcc ikj

set title 'mesures of iKJ algorithms with gcc compiler'                       # plot title
set output 'graphs/gcc_iKJ.png'
plot "gcc/O0/IKJ.txt" u STATS_size_x:key(1) title 'O0', "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'O1' , "gcc/O2/IKJ.txt" u STATS_size_x:key(1) title 'O2' , "gcc/O3/IKJ.txt" u STATS_size_x:key(1) title 'O3'

#gcc iex

set title 'mesures of IEX algorithms with gcc compiler'                       # plot title
set output 'graphs/gcc_IEX.png'
plot "gcc/O0/IEX.txt" u STATS_size_x:key(1) title 'O0', "gcc/O1/IEX.txt" u STATS_size_x:key(1) title 'O1' , "gcc/O2/IEX.txt" u STATS_size_x:key(1) title 'O2' , "gcc/O3/IEX.txt" u STATS_size_x:key(1) title 'O3'

#gcc cblas

set title 'mesures of CBLAS algorithms with gcc compiler'                       # plot title
set output 'graphs/gcc_CBLAS.png'
plot "gcc/O0/CBLAS.txt" u STATS_size_x:key(1) title 'O0', "gcc/O1/CBLAS.txt" u STATS_size_x:key(1) title 'O1' , "gcc/O2/CBLAS.txt" u STATS_size_x:key(1) title 'O2' , "gcc/O3/CBLAS.txt" u STATS_size_x:key(1) title 'O3'


#gcc unroll4

set title 'mesures of UNROLL4 algorithms with gcc compiler'                       # plot title
set output 'graphs/gcc_UNROLL4.png'
plot "gcc/O0/UNROLL4.txt" u STATS_size_x:key(1) title 'O0', "gcc/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'O1' , "gcc/O2/UNROLL4.txt" u STATS_size_x:key(1) title 'O2' , "gcc/O3/UNROLL4.txt" u STATS_size_x:key(1) title 'O3'


#gcc unroll8

set title 'mesures of UNROLL8 algorithms with gcc compiler'                       # plot title
set output 'graphs/gcc_UNROLL8.png'
plot "gcc/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'O0', "gcc/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'O1' , "gcc/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'O2' , "gcc/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'O3'

#clang IJK

set title 'mesures of IJK algorithms with clang compiler'                       # plot title
set output 'graphs/clang_IJK.png'
plot "clang/O0/IJK.txt" u STATS_size_x:key(1) title 'O0', "clang/O1/IJK.txt" u STATS_size_x:key(1) title 'O1' , "clang/O2/IJK.txt" u STATS_size_x:key(1) title 'O2' , "clang/O3/IJK.txt" u STATS_size_x:key(1) title 'O3'

#clang ikj

set title 'mesures of iKJ algorithms with clang compiler'                       # plot title
set output 'graphs/clang_iKJ.png'
plot "clang/O0/IKJ.txt" u STATS_size_x:key(1) title 'O0', "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'O1' , "clang/O2/IKJ.txt" u STATS_size_x:key(1) title 'O2' , "clang/O3/IKJ.txt" u STATS_size_x:key(1) title 'O3'

#clang iex

set title 'mesures of IEX algorithms with clang compiler'                       # plot title
set output 'graphs/clang_IEX.png'
plot "clang/O0/IEX.txt" u STATS_size_x:key(1) title 'O0', "clang/O1/IEX.txt" u STATS_size_x:key(1) title 'O1' , "clang/O2/IEX.txt" u STATS_size_x:key(1) title 'O2' , "clang/O3/IEX.txt" u STATS_size_x:key(1) title 'O3'

#clang cblas

set title 'mesures of CBLAS algorithms with clang compiler'                       # plot title
set output 'graphs/clang_CBLAS.png'
plot "clang/O0/CBLAS.txt" u STATS_size_x:key(1) title 'O0', "clang/O1/CBLAS.txt" u STATS_size_x:key(1) title 'O1' , "clang/O2/CBLAS.txt" u STATS_size_x:key(1) title 'O2' , "clang/O3/CBLAS.txt" u STATS_size_x:key(1) title 'O3'


#clang unroll4

set title 'mesures of UNROLL4 algorithms with clang compiler'                       # plot title
set output 'graphs/clang_UNROLL4.png'
plot "clang/O0/UNROLL4.txt" u STATS_size_x:key(1) title 'O0', "clang/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'O1' , "clang/O2/UNROLL4.txt" u STATS_size_x:key(1) title 'O2' , "clang/O3/UNROLL4.txt" u STATS_size_x:key(1) title 'O3'


#clang unroll8

set title 'mesures of UNROLL8 algorithms with clang compiler'                       # plot title
set output 'graphs/clang_UNROLL8.png'
plot "clang/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'O0', "clang/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'O1' , "clang/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'O2' , "clang/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'O3'


# O0 clang gcc IJK

set title 'comparaison between GCC and CLANG compilers performances in IJK algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_IJK.png'
plot "gcc/O0/IJK.txt" u STATS_size_x:key(1) title 'gcc IJK', "clang/O0/IJK.txt" u STATS_size_x:key(1) title 'clang IJK'


# O0 clang gcc ikj

set title 'comparaison between GCC and CLANG compilers performances in IKJ algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_IKJ.png'
plot "gcc/O0/IKJ.txt" u STATS_size_x:key(1) title 'gcc IKJ', "clang/O0/IKJ.txt" u STATS_size_x:key(1) title 'clang IKJ'


# O0 clang gcc iex

set title 'comparaison between GCC and CLANG compilers performances in IEX algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_IEX.png'
plot "gcc/O0/IEX.txt" u STATS_size_x:key(1) title 'gcc IEX', "clang/O0/IEX.txt" u STATS_size_x:key(1) title 'clang IEX'


# O0 clang gcc cblas

set title 'comparaison between GCC and CLANG compilers performances in CBLAS algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_CBLAS.png'
plot "gcc/O0/CBLAS.txt" u STATS_size_x:key(1) title 'gcc CBLAS', "clang/O0/CBLAS.txt" u STATS_size_x:key(1) title 'clang CBLAS'


# O0 clang gcc unroll4

set title 'comparaison between GCC and CLANG compilers performances in UNROLL4 algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_UNROLL4.png'
plot "gcc/O0/UNROLL4.txt" u STATS_size_x:key(1) title 'gcc UNROLL4', "clang/O0/UNROLL4.txt" u STATS_size_x:key(1) title 'clang UNROLL4'

# O0 clang gcc unroll8

set title 'comparaison between GCC and CLANG compilers performances in UNROLL8 algorithm'                       # plot title
set output 'graphs/o0_clang_gcc_UNROLL8.png'
plot "gcc/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL8', "clang/O0/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL8'


# O1 clang gcc IJK

set title 'comparaison between GCC and CLANG compilers performances in IJK algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_IJK.png'
plot "gcc/O1/IJK.txt" u STATS_size_x:key(1) title 'gcc IJK', "clang/O1/IJK.txt" u STATS_size_x:key(1) title 'clang IJK'


# O1 clang gcc ikj

set title 'comparaison between GCC and CLANG compilers performances in IKJ algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_IKJ.png'
plot "gcc/O1/IKJ.txt" u STATS_size_x:key(1) title 'gcc IKJ', "clang/O1/IKJ.txt" u STATS_size_x:key(1) title 'clang IKJ'


# O1 clang gcc iex

set title 'comparaison between GCC and CLANG compilers performances in IEX algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_IEX.png'
plot "gcc/O1/IEX.txt" u STATS_size_x:key(1) title 'gcc IEX', "clang/O1/IEX.txt" u STATS_size_x:key(1) title 'clang IEX'


# O1 clang gcc cblas

set title 'comparaison between GCC and CLANG compilers performances in CBLAS algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_CBLAS.png'
plot "gcc/O1/CBLAS.txt" u STATS_size_x:key(1) title 'gcc CBLAS', "clang/O1/CBLAS.txt" u STATS_size_x:key(1) title 'clang CBLAS'


# O1 clang gcc unroll4

set title 'comparaison between GCC and CLANG compilers performances in UNROLL4 algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_UNROLL4.png'
plot "gcc/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'gcc UNROLL4', "clang/O1/UNROLL4.txt" u STATS_size_x:key(1) title 'clang UNROLL4'

# O1 clang gcc unroll8

set title 'comparaison between GCC and CLANG compilers performances in UNROLL8 algorithm'                       # plot title
set output 'graphs/o1_clang_gcc_UNROLL8.png'
plot "gcc/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL8', "clang/O1/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL8'

# O2 clang gcc IJK

set title 'comparaison between GCC and CLANG compilers performances in IJK algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_IJK.png'
plot "gcc/O2/IJK.txt" u STATS_size_x:key(1) title 'gcc IJK', "clang/O2/IJK.txt" u STATS_size_x:key(1) title 'clang IJK'


# O2 clang gcc ikj

set title 'comparaison between GCC and CLANG compilers performances in IKJ algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_IKJ.png'
plot "gcc/O2/IKJ.txt" u STATS_size_x:key(1) title 'gcc IKJ', "clang/O2/IKJ.txt" u STATS_size_x:key(1) title 'clang IKJ'


# O2 clang gcc iex

set title 'comparaison between GCC and CLANG compilers performances in IEX algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_IEX.png'
plot "gcc/O2/IEX.txt" u STATS_size_x:key(1) title 'gcc IEX', "clang/O2/IEX.txt" u STATS_size_x:key(1) title 'clang IEX'


# O2 clang gcc cblas

set title 'comparaison between GCC and CLANG compilers performances in CBLAS algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_CBLAS.png'
plot "gcc/O2/CBLAS.txt" u STATS_size_x:key(1) title 'gcc CBLAS', "clang/O2/CBLAS.txt" u STATS_size_x:key(1) title 'clang CBLAS'


# O2 clang gcc unroll4

set title 'comparaison between GCC and CLANG compilers performances in UNROLL4 algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_UNROLL4.png'
plot "gcc/O2/UNROLL4.txt" u STATS_size_x:key(1) title 'gcc UNROLL4', "clang/O2/UNROLL4.txt" u STATS_size_x:key(1) title 'clang UNROLL4'

# O2 clang gcc unroll8

set title 'comparaison between GCC and CLANG compilers performances in UNROLL8 algorithm'                       # plot title
set output 'graphs/o2_clang_gcc_UNROLL8.png'
plot "gcc/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL8', "clang/O2/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL8'


# O3 clang gcc IJK

set title 'comparaison between GCC and CLANG compilers performances in IJK algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_IJK.png'
plot "gcc/O3/IJK.txt" u STATS_size_x:key(1) title 'gcc IJK', "clang/O3/IJK.txt" u STATS_size_x:key(1) title 'clang IJK'


# O3 clang gcc ikj

set title 'comparaison between GCC and CLANG compilers performances in IKJ algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_IKJ.png'
plot "gcc/O3/IKJ.txt" u STATS_size_x:key(1) title 'gcc IKJ', "clang/O3/IKJ.txt" u STATS_size_x:key(1) title 'clang IKJ'


# O3 clang gcc iex

set title 'comparaison between GCC and CLANG compilers performances in IEX algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_IEX.png'
plot "gcc/O3/IEX.txt" u STATS_size_x:key(1) title ' gcc IEX', "clang/O3/IEX.txt" u STATS_size_x:key(1) title 'clang IEX'


# O3 clang gcc cblas

set title 'comparaison between GCC and CLANG compilers performances in CBLAS algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_CBLAS.png'
plot "gcc/O3/CBLAS.txt" u STATS_size_x:key(1) title 'gcc CBLAS', "clang/O3/CBLAS.txt" u STATS_size_x:key(1) title 'clang CBLAS'


# O3 clang gcc unroll4

set title 'comparaison between GCC and CLANG compilers performances in UNROLL4 algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_UNROLL4.png'
plot "gcc/O3/UNROLL4.txt" u STATS_size_x:key(1) title 'gcc UNROLL4', "clang/O3/UNROLL4.txt" u STATS_size_x:key(1) title 'clang UNROLL4'

# O3 clang gcc unroll8

set title 'comparaison between GCC and CLANG compilers performances in UNROLL8 algorithm'                       # plot title
set output 'graphs/o3_clang_gcc_UNROLL8.png'
plot "gcc/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'gcc UNROLL8', "clang/O3/UNROLL8.txt" u STATS_size_x:key(1) title 'clang UNROLL8'


