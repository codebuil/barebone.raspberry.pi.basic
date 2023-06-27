printf "\ec\e[44;37m\n"
gcc -o hello hello.c
cat hello | head > hello.bin
hexedit hello.bin


