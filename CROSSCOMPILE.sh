#!/bin/sh
#
# cross compile example
#


#export PREFIX=/volquad/arm-4.0.2
export PREFIX=/usr/local/arm_tools
export DESTDIR=/tmp/openswan.arm

export ARCH=arm
export CC=$PREFIX/bin/arm-elf-gcc
export GCC=$PREFIX/bin/arm-elf-gcc
export LD=$PREFIX/bin/arm-elf-ld
export RANLIB=$PREFIX/bin/arm-elf-ranlib
export AR=$PREFIX/bin/arm-elf-ar
export AS=$PREFIX/bin/arm-elf-as
export STRIP=$PREFIX/bin/arm-elf-strip
export LD_LIBRARY_PATH=$PREFIX/lib/gcc-lib/arm-elf/3.0/
export PATH=$PATH:$PREFIX/bin
export USERCOMPILE="-O3 -g ${PORTDEFINE} -I'$PREFIX'/arm-elf/inc -L'$PREFIX'/lib/gcc-lib -DGCC_LINT -DLEAK_DETECTIVE -Dlinux -D__linux__"
export WERROR=' ' 

#now you can run:
# make programs
#and binaries will appear in OBJ.linux.$ARCH/
#and run:
# make install
#and the install will go into $DESTDIR/