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
#   File: hdmi4k.pri
#
# Author: $author$
#   Date: 7/13/2016
########################################################################

hdmi4k_INCLUDEPATH += \
$${apertus_INCLUDEPATH} \
$${APERTUS_SRC}/thirdparty/macosx/gnu/gomp \

hdmi4k_DEFINES += \
$${apertus_DEFINES} \

########################################################################
hdmi4k_HEADERS += \
$${APERTUS_SRC}/thirdparty/macosx/gnu/gomp/omp.h \
$${APERTUS_SRC}/raw-via-hdmi/hdmi4k/cmdoptions.h \

hdmi4k_SOURCES += \
$${APERTUS_SRC}/thirdparty/macosx/gnu/gomp/omp.c \
$${APERTUS_SRC}/raw-via-hdmi/hdmi4k/cmdoptions.c \
$${APERTUS_SRC}/raw-via-hdmi/hdmi4k/hdmi4k.c \

########################################################################
hdmi4k_LIBS += \
$${apertus_LIBS} \
