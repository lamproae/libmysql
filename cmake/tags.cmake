# Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; version 2 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA 

# Generate tag files
IF(UNIX)
  ADD_CUSTOM_TARGET (tags
    COMMAND support-files/build-tags
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
  )
  ADD_CUSTOM_TARGET (ctags
    COMMAND  ctags -R -f CTAGS
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
  )
ENDIF()
