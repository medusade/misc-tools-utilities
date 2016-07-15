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
#   File: libpgm.pri
#
# Author: $author$
#   Date: 7/14/2016
########################################################################

libpgm_INCLUDEPATH += \
$${apertus_INCLUDEPATH} \
$${APERTUS_SRC}/thirdparty/macosx/libc/libpgm \
$${APERTUS_SRC}/thirdparty/macosx/libc/libpbm \

libpgm_DEFINES += \
$${apertus_DEFINES} \

########################################################################
libpgm_HEADERS += \
$${APERTUS_SRC}/thirdparty/macosx/libc/libpgm/libpgm.h \
$${APERTUS_SRC}/thirdparty/macosx/libc/libpbm/libpbm.h \

libpgm_SOURCES += \
$${APERTUS_SRC}/thirdparty/macosx/libc/libpgm/libpgm.c \
$${APERTUS_SRC}/thirdparty/macosx/libc/libpbm/libpbm.c \

########################################################################
