# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget ntdll_imports dynamorio dynamorio_static drinjectlib drdecode drlibc drconfiglib drfrontendlib drmemtrace_reuse_distance drmemtrace_histogram drmemtrace_reuse_time drmemtrace_basic_counts drmemtrace_opcode_mix drmemtrace_view drmemtrace_func_view drmemtrace_simulator directory_iterator drmemtrace_raw2trace drmemtrace_analyzer drcontainers drmgr drmgr_static drx drx_static drwrap drwrap_static drreg drreg_static drbbdup drbbdup_static drsyms drsyms_static drutil drutil_static drcovlib drcovlib_static)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target ntdll_imports
add_library(ntdll_imports SHARED IMPORTED)

# Create imported target dynamorio
add_library(dynamorio SHARED IMPORTED)

# Create imported target dynamorio_static
add_library(dynamorio_static STATIC IMPORTED)

set_target_properties(dynamorio_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "drlibc;libcmt;ntdll_imports"
)

# Create imported target drinjectlib
add_library(drinjectlib SHARED IMPORTED)

set_target_properties(drinjectlib PROPERTIES
  INTERFACE_LINK_LIBRARIES "drdecode;drlibc;drdecode;libcmt;libvcruntime.lib;libucrt.lib;ntdll_imports;kernel32;advapi32;imagehlp"
)

# Create imported target drdecode
add_library(drdecode STATIC IMPORTED)

set_target_properties(drdecode PROPERTIES
  INTERFACE_LINK_LIBRARIES "drlibc"
)

# Create imported target drlibc
add_library(drlibc STATIC IMPORTED)

# Create imported target drconfiglib
add_library(drconfiglib SHARED IMPORTED)

set_target_properties(drconfiglib PROPERTIES
  INTERFACE_LINK_LIBRARIES "drfrontendlib;drlibc"
)

# Create imported target drfrontendlib
add_library(drfrontendlib STATIC IMPORTED)

# Create imported target drmemtrace_reuse_distance
add_library(drmemtrace_reuse_distance STATIC IMPORTED)

# Create imported target drmemtrace_histogram
add_library(drmemtrace_histogram STATIC IMPORTED)

# Create imported target drmemtrace_reuse_time
add_library(drmemtrace_reuse_time STATIC IMPORTED)

# Create imported target drmemtrace_basic_counts
add_library(drmemtrace_basic_counts STATIC IMPORTED)

# Create imported target drmemtrace_opcode_mix
add_library(drmemtrace_opcode_mix STATIC IMPORTED)

set_target_properties(drmemtrace_opcode_mix PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio"
)

# Create imported target drmemtrace_view
add_library(drmemtrace_view STATIC IMPORTED)

set_target_properties(drmemtrace_view PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio"
)

# Create imported target drmemtrace_func_view
add_library(drmemtrace_func_view STATIC IMPORTED)

# Create imported target drmemtrace_simulator
add_library(drmemtrace_simulator STATIC IMPORTED)

# Create imported target directory_iterator
add_library(directory_iterator STATIC IMPORTED)

set_target_properties(directory_iterator PROPERTIES
  INTERFACE_LINK_LIBRARIES "drfrontendlib"
)

# Create imported target drmemtrace_raw2trace
add_library(drmemtrace_raw2trace STATIC IMPORTED)

set_target_properties(drmemtrace_raw2trace PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio;directory_iterator;drfrontendlib;drutil_static"
)

# Create imported target drmemtrace_analyzer
add_library(drmemtrace_analyzer STATIC IMPORTED)

set_target_properties(drmemtrace_analyzer PROPERTIES
  INTERFACE_LINK_LIBRARIES "directory_iterator"
)

# Create imported target drcontainers
add_library(drcontainers STATIC IMPORTED)

set_target_properties(drcontainers PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;dynamorio"
)

# Create imported target drmgr
add_library(drmgr SHARED IMPORTED)

set_target_properties(drmgr PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers"
)

# Create imported target drmgr_static
add_library(drmgr_static STATIC IMPORTED)

set_target_properties(drmgr_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers"
)

# Create imported target drx
add_library(drx SHARED IMPORTED)

set_target_properties(drx PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr;drreg;drmgr;ntdll_imports"
)

# Create imported target drx_static
add_library(drx_static STATIC IMPORTED)

set_target_properties(drx_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static;drreg_static;ntdll_imports"
)

# Create imported target drwrap
add_library(drwrap SHARED IMPORTED)

set_target_properties(drwrap PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr;drcontainers"
)

# Create imported target drwrap_static
add_library(drwrap_static STATIC IMPORTED)

set_target_properties(drwrap_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr_static;drcontainers"
)

# Create imported target drreg
add_library(drreg SHARED IMPORTED)

set_target_properties(drreg PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr"
)

# Create imported target drreg_static
add_library(drreg_static STATIC IMPORTED)

set_target_properties(drreg_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static"
)

# Create imported target drbbdup
add_library(drbbdup SHARED IMPORTED)

set_target_properties(drbbdup PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr;drreg"
)

# Create imported target drbbdup_static
add_library(drbbdup_static STATIC IMPORTED)

set_target_properties(drbbdup_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static;drreg_static"
)

# Create imported target drsyms
add_library(drsyms SHARED IMPORTED)

# Create imported target drsyms_static
add_library(drsyms_static STATIC IMPORTED)

set_target_properties(drsyms_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "libcpmt;libcmt;libvcruntime.lib;libucrt.lib;dynamorio;dbghelp;C:/projects/dynamorio/build/build_release-32/ext/drsyms/dbghelp_imports.lib;drcontainers;dwarf;elftc"
)

# Create imported target drutil
add_library(drutil SHARED IMPORTED)

set_target_properties(drutil PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr"
)

# Create imported target drutil_static
add_library(drutil_static STATIC IMPORTED)

set_target_properties(drutil_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drmgr_static"
)

# Create imported target drcovlib
add_library(drcovlib SHARED IMPORTED)

set_target_properties(drcovlib PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr;drx"
)

# Create imported target drcovlib_static
add_library(drcovlib_static STATIC IMPORTED)

set_target_properties(drcovlib_static PROPERTIES
  INTERFACE_LINK_LIBRARIES "dynamorio;drcontainers;drmgr_static;drx_static"
)

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/DynamoRIOTarget32-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)

SET_PROPERTY(TARGET ntdll_imports PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET ntdll_imports PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET dynamorio PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET dynamorio PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET dynamorio_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET dynamorio_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drinjectlib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drinjectlib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drdecode PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drdecode PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drlibc PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drlibc PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drconfiglib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drconfiglib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drfrontendlib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drfrontendlib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_reuse_distance PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_reuse_distance PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_histogram PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_histogram PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_reuse_time PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_reuse_time PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_basic_counts PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_basic_counts PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_opcode_mix PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_opcode_mix PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_view PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_view PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_func_view PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_func_view PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_simulator PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_simulator PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET directory_iterator PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET directory_iterator PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_raw2trace PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_raw2trace PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_analyzer PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_analyzer PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcontainers PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcontainers PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmgr PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmgr PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmgr_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmgr_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drx PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drx PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drx_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drx_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drwrap PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drwrap PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drwrap_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drwrap_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drreg PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drreg PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drreg_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drreg_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drbbdup PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drbbdup PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drbbdup_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drbbdup_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drsyms PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drsyms PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drsyms_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drsyms_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drutil PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drutil PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drutil_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drutil_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcovlib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcovlib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcovlib_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcovlib_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)
