#sudo cpupower -c 2 frequency-set -f 1GHZ
#modprobe cpufreq_userspace
#sudo cpupower frequency-set --governor userspace

cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_driver

sudo cpupower frequency-set -f 2GHZ

taskset -c 2 ./dgemm 100 100
