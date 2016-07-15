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
# Thirdpary Makefile for ffmpeg
########################################################################

MAKEDIR=$(PWD)

########################################################################
#
# ffmpeg defs
#
########################################################################
FFMPEG_VERSION_MAJOR = 3
FFMPEG_VERSION_MINOR = 1
FFMPEG_VERSION_RELEASE = 1

FFMPEG_VERSION_SEPARATOR = .
FFMPEG_VERSION_MAJOR_SEPARATOR = $(FFMPEG_VERSION_SEPARATOR)
FFMPEG_VERSION_MINOR_SEPARATOR = $(FFMPEG_VERSION_SEPARATOR)

FFMPEG_VERSION_SHORT = $(FFMPEG_VERSION_MAJOR)$(FFMPEG_VERSION_MINOR)$(FFMPEG_VERSION_RELEASE)
FFMPEG_VERSION = $(FFMPEG_VERSION_MAJOR)$(FFMPEG_VERSION_MAJOR_SEPARATOR)$(FFMPEG_VERSION_MINOR)$(FFMPEG_VERSION_MINOR_SEPARATOR)$(FFMPEG_VERSION_RELEASE)

FFMPEG_NAME_SEPARATOR = -
FFMPEG_NAME_BASE = ffmpeg
FFMPEG_NAME = $(FFMPEG_NAME_BASE)$(FFMPEG_NAME_SEPARATOR)$(FFMPEG_VERSION)
FFMPEG_INSTALL_NAME_SEPARATOR = -
FFMPEG_INSTALL_NAME = $(FFMPEG_NAME_BASE)$(FFMPEG_INSTALL_NAME_SEPARATOR)$(FFMPEG_VERSION)

FFMPEG_ARCHIVED = tar
FFMPEG_COMPRESSED = bz2
FFMPEG_ARCHIVE_SEPARATOR = .
FFMPEG_ARCHIVED_SEPARATOR = $(FFMPEG_ARCHIVE_SEPARATOR)
FFMPEG_COMPRESSED_SEPARATOR = $(FFMPEG_ARCHIVE_SEPARATOR)

FFMPEG_BUILD = $(HOME)/build
FFMPEG_PREFIX = $(FFMPEG_BUILD)/$(FFMPEG_INSTALL_NAME)
FFMPEG_EXEC_PREFIX = $(FFMPEG_PREFIX)
FFMPEG_CONF_PREFIX = $(FFMPEG_PREFIX)
FFMPEG_DOCS_PREFIX = $(FFMPEG_PREFIX)
FFMPEG_LINK_NAME = $(FFMPEG_BUILD)/$(FFMPEG_NAME_BASE)
FFMPEG_DIR = $(FFMPEG_NAME)
FFMPEG_EXTRACT_DIR = $(FFMPEG_NAME)
FFMPEG_TGZ_PREFIX = 
FFMPEG_TGZ = $(FFMPEG_NAME)$(FFMPEG_TGZ_PREFIX)$(FFMPEG_ARCHIVED_SEPARATOR)$(FFMPEG_ARCHIVED)$(FFMPEG_COMPRESSED_SEPARATOR)$(FFMPEG_COMPRESSED)
FFMPEG_PATCH_TGZ_PREFIX = $(FFMPEG_NAME_SEPARATOR)patch
FFMPEG_PATCH_TGZ = $(FFMPEG_NAME)$(FFMPEG_PATCH_TGZ_PREFIX)$(FFMPEG_ARCHIVED_SEPARATOR)$(FFMPEG_ARCHIVED)$(FFMPEG_COMPRESSED_SEPARATOR)$(FFMPEG_COMPRESSED)
FFMPEG_DOCS_TGZ_PREFIX = $(FFMPEG_NAME_SEPARATOR)docs
FFMPEG_DOCS_TGZ = $(FFMPEG_NAME)$(FFMPEG_DOCS_TGZ_PREFIX)$(FFMPEG_ARCHIVED_SEPARATOR)$(FFMPEG_ARCHIVED)$(FFMPEG_COMPRESSED_SEPARATOR)$(FFMPEG_COMPRESSED)

FFMPEG_LOCATION = https://ffmpeg.org/releases/
FFMPEG_DOWNLOAD = curl $(FFMPEG_LOCATION)
FFMPEG_DOWNLOAD_TGZ = $(FFMPEG_DOWNLOAD)$(FFMPEG_TGZ) -o $(FFMPEG_TGZ)
FFMPEG_REMOVE_TGZ = $(FFMPEG_REMOVE) $(FFMPEG_TGZ)

ifeq ($(FFMPEG_ARCHIVED),tar)
ifeq ($(FFMPEG_COMPRESSED),gz)
FFMPEG_TAR_UNCOMPRESS = z
FFMPEG_TAR_COMPRESS = z
else
ifeq ($(FFMPEG_COMPRESSED),bz2)
FFMPEG_TAR_UNCOMPRESS = j
FFMPEG_TAR_COMPRESS = j
else
endif
endif
FFMPEG_LIST = tar -tv$(FFMPEG_TAR_UNCOMPRESS)f
FFMPEG_EXTRACT = tar -x$(FFMPEG_TAR_UNCOMPRESS)f
FFMPEG_ARCHIVE = tar -cv$(FFMPEG_TAR_COMPRESS)f
else
ifeq ($(FFMPEG_ARCHIVED),zip)
FFMPEG_LIST = unzip -l
FFMPEG_EXTRACT = unzip
FFMPEG_ARCHIVE = zip
else
FFMPEG_LIST = echo unable to list
FFMPEG_EXTRACT = echo unable to extract
FFMPEG_ARCHIVE = echo unable to archive
endif
endif

FFMPEG_MKDIR = mkdir -p
FFMPEG_REMOVE = rm -r -f

FFMPEG_MAKE_DIR = $(FFMPEG_DIR)
FFMPEG_MAKE_PUSHD = pushd $(FFMPEG_MAKE_DIR)
FFMPEG_MAKE = make

FFMPEG_CONFIGURE_PUSHD = pushd $(FFMPEG_MAKE_DIR)

FFMPEG_CONFIGURE = ./configure \
--prefix=$(FFMPEG_PREFIX) \
--disable-yasm

FFMPEG_HELP = ./configure --help

FFMPEG_LIST_TGZ = $(FFMPEG_LIST) $(FFMPEG_TGZ)
FFMPEG_EXTRACT_TGZ = $(FFMPEG_EXTRACT) $(FFMPEG_TGZ)
FFMPEG_TOUCH_EXTRACT = touch $(FFMPEG_DIR)
FFMPEG_REMOVE_DIR = $(FFMPEG_REMOVE) $(FFMPEG_DIR)

FFMPEG_LIST_PATCH = $(FFMPEG_LIST)
FFMPEG_EXTRACT_PATCH = $(FFMPEG_EXTRACT)
FFMPEG_LIST_PATCH_TGZ = $(FFMPEG_LIST_PATCH) $(FFMPEG_PATCH_TGZ)
FFMPEG_EXTRACT_PATCH_TGZ = $(FFMPEG_EXTRACT_PATCH) $(FFMPEG_PATCH_TGZ)

FFMPEG_LIST_DOCS = $(FFMPEG_LIST)
FFMPEG_EXTRACT_DOCS = $(FFMPEG_EXTRACT)
FFMPEG_LIST_DOCS_TGZ = $(FFMPEG_LIST_DOCS) $(FFMPEG_DOCS_TGZ)
FFMPEG_EXTRACT_DOCS_TGZ = $(FFMPEG_EXTRACT_DOCS) $(FFMPEG_DOCS_TGZ) -C$(FFMPEG_DOCS_PREFIX)

########################################################################
#
# rules
#
########################################################################

all:

test: test-ffmpeg

install-links: install-ffmpeg-links

install-docs: install-ffmpeg-docs

install-prefix: install-ffmpeg-prefix

install: install-ffmpeg

build: build-ffmpeg

clean: clean-ffmpeg

configed: configed-$(FFMPEG_DIR)

config: config-$(FFMPEG_DIR)

help: help-ffmpeg

list-docs: list-ffmpeg-docs

list-patch: list-ffmpeg-patch

extract-patch: extract-ffmpeg-patch

list: list-ffmpeg

download: download-ffmpeg

undownload: undownload-ffmpeg

extract: extract-ffmpeg

unextract: unextract-ffmpeg

archive: archive-ffmpeg

linked: ffmpeg-linked

prefixed: ffmpeg-prefixed

archived: ffmpeg-archived

extracted: ffmpeg-extracted

########################################################################
#
# ffmpeg rules
#
########################################################################

#
# Test ffmpeg
#
test-ffmpeg:
	@($(FFMPEG_MAKE_PUSHD);\
	  (($(FFMPEG_MAKE) test) || (exit 1));\
	  popd)

#
# Install ffmpeg
#
install-ffmpeg: configed-$(FFMPEG_DIR)
	@(echo Installing $(FFMPEG_DIR)...;\
	  $(FFMPEG_MAKE_PUSHD);\
	  (($(FFMPEG_MAKE) install) || (exit 1)) && \
	  ((touch $(MAKEDIR)/configed-$(FFMPEG_DIR)) || (exit 1));\
	  popd)
	  
#
# Build ffmpeg
#
build-ffmpeg: configed-$(FFMPEG_DIR)
	@(echo Building $(FFMPEG_DIR)...;\
	  $(FFMPEG_MAKE_PUSHD);\
	  (($(FFMPEG_MAKE)) || (exit 1)) && \
	  ((touch $(MAKEDIR)/configed-$(FFMPEG_DIR)) || (exit 1));\
	  popd)
	  
#
# Clean ffmpeg
#
clean-ffmpeg: configed-$(FFMPEG_DIR)
	@(echo Cleaning $(FFMPEG_DIR)...;\
	  $(FFMPEG_MAKE_PUSHD);\
	  (($(FFMPEG_MAKE) clean) || (exit 1)) && \
	  ((touch $(MAKEDIR)/configed-$(FFMPEG_DIR)) || (exit 1));\
	  popd)
	  
#
# Config ffmpeg
#
config-$(FFMPEG_DIR): unconfig-$(FFMPEG_DIR) configed-$(FFMPEG_DIR)

unconfig-$(FFMPEG_DIR):
	@(rm -f configed-$(FFMPEG_DIR))

configed-$(FFMPEG_DIR): $(FFMPEG_DIR)
	@(echo Configing $(FFMPEG_DIR)...;\
	  $(FFMPEG_CONFIGURE_PUSHD);\
	  (($(FFMPEG_CONFIGURE)) || (exit 1)) && \
	  ((touch $(FFMPEG_DIR)) || (exit 1)) && \
	  ((touch $(MAKEDIR)/configed-$(FFMPEG_DIR)) || (exit 1));\
	  popd)

#
# Help ffmpeg
#
help-ffmpeg:
	@($(FFMPEG_CONFIGURE_PUSHD);\
	  (($(FFMPEG_HELP)) || (exit 1));\
	  popd)

#
# List ffmpeg Docs
#
list-ffmpeg-docs: $(FFMPEG_DOCS_TGZ)
	@(echo Listing $(FFMPEG_DOCS_TGZ)...;\
	  (($(FFMPEG_LIST_DOCS_TGZ)) || (exit 1)))

#
# Install ffmpeg Docs
#
install-ffmpeg-docs: $(FFMPEG_DOCS_PREFIX)
	@(echo Extracting $(FFMPEG_DOCS_TGZ)...;\
	  (($(FFMPEG_EXTRACT_DOCS_TGZ)) || (exit 1)))

#
# List ffmpeg Patch
#
list-ffmpeg-patch: $(FFMPEG_PATCH_TGZ)
	@(echo Listing $(FFMPEG_PATCH_TGZ)...;\
	  (($(FFMPEG_LIST_PATCH_TGZ)) || (exit 1)))

#
# Extract ffmpeg patch
#
extract-ffmpeg-patch: $(FFMPEG_DIR)
	@(echo Extracting $(FFMPEG_PATCH_TGZ)...;\
	  (($(FFMPEG_EXTRACT_PATCH_TGZ)) || (exit 1)))

#
# Download ffmpeg
#
download-ffmpeg: undownload-ffmpeg $(FFMPEG_TGZ)

undownload-ffmpeg:
	@(echo Removing $(FFMPEG_TGZ)...;\
	  (($(FFMPEG_REMOVE_TGZ)) || (exit 1)))

$(FFMPEG_TGZ):
	@(echo Downloading $(FFMPEG_TGZ)...;\
	  (($(FFMPEG_DOWNLOAD_TGZ)) || (exit 1)))

#
# List ffmpeg
#
list-ffmpeg: $(FFMPEG_TGZ)
	@(echo Listing $(FFMPEG_TGZ)...;\
	  (($(FFMPEG_LIST_TGZ)) || (exit 1)))

#
# Extract ffmpeg
#
extract-ffmpeg: unextract-ffmpeg $(FFMPEG_DIR)

unextract-ffmpeg: 
	@(echo Removing $(FFMPEG_DIR)...;\
	  (($(FFMPEG_REMOVE_DIR)) || (exit 1)))

$(FFMPEG_DIR): $(FFMPEG_TGZ)
	@(echo Extracting $(FFMPEG_TGZ)...;\
	  (($(FFMPEG_EXTRACT_TGZ)) || (exit 1)) && \
	  (($(FFMPEG_TOUCH_EXTRACT)) || (exit 1)))
	  
#
# Archive ffmpeg
#
archive-ffmpeg: 
	@(echo Archiving $(FFMPEG_DIR) to $(FFMPEG_TGZ)...;\
	  (($(FFMPEG_ARCHIVE) $(FFMPEG_TGZ) $(FFMPEG_DIR)) || (exit 1)))

#
# Install ffmpeg links
#
install-ffmpeg-links: 
	@((echo removing $(FFMPEG_LINK_NAME)) && \
	  ((rm -f $(FFMPEG_LINK_NAME)) || (exit 1)) && \
	  (echo Linking $(FFMPEG_LINK_NAME) "->" $(FFMPEG_PREFIX)) && \
	  ((ln -s $(FFMPEG_PREFIX) $(FFMPEG_LINK_NAME)) || (exit 1)))
	  
#
# ffmpeg linked
#
ffmpeg-linked: 
	@echo link is $(FFMPEG_LINK_NAME) "->" $(FFMPEG_PREFIX)
	  
#
# Install ffmpeg prefix
#
install-ffmpeg-prefix: 
	@((echo makeing $(FFMPEG_PREFIX)) && \
	  ((mkdir -p $(FFMPEG_PREFIX)) || (exit 1)) && \
	  (echo makeing $(FFMPEG_EXEC_PREFIX)) && \
	  ((mkdir -p $(FFMPEG_EXEC_PREFIX)) || (exit 1)))
	  
#
# ffmpeg prefixed
#
ffmpeg-prefixed: 
	@((echo prefix is $(FFMPEG_PREFIX)) && \
	  (echo exec prefix is $(FFMPEG_EXEC_PREFIX)) && \
	  (echo conf prefix is $(FFMPEG_CONF_PREFIX)) && \
	  (echo docs prefix is $(FFMPEG_DOCS_PREFIX)))
	  
$(FFMPEG_PREFIX):
	@(echo Makeing Directory $(FFMPEG_PREFIX)...;\
	  (($(FFMPEG_MKDIR) $(FFMPEG_PREFIX)) || (exit 1)))

$(FFMPEG_EXEC_PREFIX):
	@(echo Makeing Directory $(FFMPEG_EXEC_PREFIX)...;\
	  (($(FFMPEG_MKDIR) $(FFMPEG_EXEC_PREFIX)) || (exit 1)))

$(FFMPEG_CONF_PREFIX):
	@(echo Makeing Directory $(FFMPEG_CONF_PREFIX)...;\
	  (($(FFMPEG_MKDIR) $(FFMPEG_CONF_PREFIX)) || (exit 1)))

$(FFMPEG_DOCS_PREFIX):
	@(echo Makeing Directory $(FFMPEG_DOCS_PREFIX)...;\
	  (($(FFMPEG_MKDIR) $(FFMPEG_DOCS_PREFIX)) || (exit 1)))

#
# ffmpeg archived
#
ffmpeg-archived: 
	@(echo $(FFMPEG_TGZ))
	  
#
# ffmpeg extracted
#
ffmpeg-extracted: 
	@(echo $(FFMPEG_EXTRACT) $(FFMPEG_TGZ))



        

