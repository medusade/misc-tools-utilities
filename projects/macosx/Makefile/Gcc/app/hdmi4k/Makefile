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
#   Date: 7/13/2016
#
# macosx Gcc Makefile for apertus executable hdmi4k
########################################################################
PKG = ../../../../../..
OS = macosx

MAK = projects/Makefile/Gcc
PRJ = projects/$(OS)/Makefile/Gcc
SRC = src

include $(PKG)/$(MAK)/Makedefines
include $(PKG)/$(PRJ)/Makedefines
include $(PKG)/$(MAK)/Makefile
include $(PKG)/$(MAK)/app/hdmi4k/Makefile

#
# target
#
EXETARGET = hdmi4k

#
# user defines
#
USRDEFINES = \
${apertus_USRDEFINES} \

#
# user includes
#
USRINCLUDES = \
${apertus_USRINCLUDES} \
-I${APERTUS_SRC}/thirdparty/macosx/gnu/gomp \

#
# user libdirs
#
USRLIBDIRS = \
${apertus_USRLIBDIRS} \

#
# user c++ flags
#
USRCXXFLAGS = \
${apertus_USRCXXFLAGS} \

#
# user c flags
#
USRCFLAGS = \
${apertus_USRCFLAGS} \

#
# user ld flags
#
USRLDFLAGS = \
${apertus_USRLDFLAGS} \

#
# Executable C sources
#
EXE_C_SOURCES = \
${hdmi4k_EXE_C_SOURCES} \
${APERTUS_SRC}/thirdparty/macosx/gnu/gomp/omp.c \

#
# Executable C++ .cc sources
#
EXE_CC_SOURCES = \
${hdmi4k_EXE_CC_SOURCES} \

#
# Executable C++ .cxx sources
#
EXE_CXX_SOURCES = \
${hdmi4k_EXE_CXX_SOURCES} \

#
# Executable C++ .cpp sources
#
EXE_CPP_SOURCES = \
${hdmi4k_EXE_CPP_SOURCES} \

#
# Executable Objective C .m sources
#
EXE_M_SOURCES = \
${hdmi4k_EXE_M_SOURCES} \

#
# Executable Objective C++ .mm sources
#
EXE_MM_SOURCES = \
${hdmi4k_EXE_MM_SOURCES} \

#
# Executable libs
#
#LIBS = \
#-lsomelib
#
LIBS = \
${apertus_LIBS} \

#
# Executable depends
#
#EXEDEP = \
#$(PKG)/$(BLD)/libsomelib \
#
EXEDEP = \

#
# Executable depend dirs
#
#EXEDEP_DIRS = \
#../libsomelib
#
EXEDEP_DIRS = \

include $(PKG)/$(PRJ)/Makerules

#
# Executable depend rules
#
#$(PKG)/$(BLD)/libsomelib.a:
#	@(echo Building libsomelib.a ...;\
#	  pushd ../libsomelib;\
#	  ((make) || (exit 1));\
#	  popd)
#
