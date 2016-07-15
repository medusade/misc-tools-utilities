########################################################################
# Copyright (c) 1988-2016 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: Makefile
#
# Author: $author$
#   Date: 7/14/2016
#
# Generic Gcc Makefile for apertus libpgm Static Library
########################################################################

#
# user defines
#
libpgm_USRDEFINES = \
${apertus_USRDEFINES}

#
# user includes
#
libpgm_USRINCLUDES = \
${apertus_USRINCLUDES} \
-I${APERTUS_SRC}/thirdparty/macosx/libc/libpgm \
-I${APERTUS_SRC}/thirdparty/macosx/libc/libpbm \

#
# user libdirs
#
libpgm_USRLIBDIRS = \
${apertus_USRLIBDIRS}

#
# user c++ flags
#
libpgm_USRCXXFLAGS = \
${apertus_USRCXXFLAGS}

#
# user c flags
#
libpgm_USRCFLAGS = \
${apertus_USRCFLAGS}

#
# user ld flags
#
libpgm_USRLDFLAGS = \
${apertus_USRLDFLAGS}

########################################################################

#
# Install includes
#
libpgm_LIBHEADERS = \
${APERTUS_SRC}/thirdparty/macosx/libc/libpgm/libpgm.h \
${APERTUS_SRC}/thirdparty/macosx/libc/libpbm/libpbm.h \

#
# Static Library C sources
#
libpgm_LIB_C_SOURCES = \
${APERTUS_SRC}/thirdparty/macosx/libc/libpgm/libpgm.c \
${APERTUS_SRC}/thirdparty/macosx/libc/libpbm/libpbm.c \

#
# Static Library C++ .cc sources
#
libpgm_LIB_CC_SOURCES = \

#
# Static Library C++ .cxx sources
#
libpgm_LIB_CXX_SOURCES = \

#
# Static Library C++ .cpp sources
#
libpgm_LIB_CPP_SOURCES = \

#
# Static Library Objective C .m sources
#
libpgm_LIB_M_SOURCES = \

#
# Static Library Objective C++ .mm sources
#
libpgm_LIB_MM_SOURCES = \

