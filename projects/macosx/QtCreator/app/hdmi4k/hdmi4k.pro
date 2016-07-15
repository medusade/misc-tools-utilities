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
#   File: hdmi4k.pro
#
# Author: $author$
#   Date: 7/13/2016
########################################################################
include(../../../../QtCreator/apertus.pri)
include(../../apertus.pri)
include(../../../../QtCreator/app/hdmi4k.pri)

TARGET = apertus

INCLUDEPATH += \
$${hdmi4k_INCLUDEPATH} \

DEFINES += \
$${hdmi4k_DEFINES} \

########################################################################
HEADERS += \
$${hdmi4k_HEADERS} \

SOURCES += \
$${hdmi4k_SOURCES} \

########################################################################
LIBS += \
$${hdmi4k_LIBS} \
