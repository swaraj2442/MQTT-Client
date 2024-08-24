#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "eclipse-paho-mqtt-c::paho-mqtt3c" for configuration "Debug"
set_property(TARGET eclipse-paho-mqtt-c::paho-mqtt3c APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(eclipse-paho-mqtt-c::paho-mqtt3c PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/libpaho-mqtt3c.dll.a"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/libpaho-mqtt3c.dll"
  )

list(APPEND _cmake_import_check_targets eclipse-paho-mqtt-c::paho-mqtt3c )
list(APPEND _cmake_import_check_files_for_eclipse-paho-mqtt-c::paho-mqtt3c "${_IMPORT_PREFIX}/lib/libpaho-mqtt3c.dll.a" "${_IMPORT_PREFIX}/bin/libpaho-mqtt3c.dll" )

# Import target "eclipse-paho-mqtt-c::paho-mqtt3a" for configuration "Debug"
set_property(TARGET eclipse-paho-mqtt-c::paho-mqtt3a APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(eclipse-paho-mqtt-c::paho-mqtt3a PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/libpaho-mqtt3a.dll.a"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/libpaho-mqtt3a.dll"
  )

list(APPEND _cmake_import_check_targets eclipse-paho-mqtt-c::paho-mqtt3a )
list(APPEND _cmake_import_check_files_for_eclipse-paho-mqtt-c::paho-mqtt3a "${_IMPORT_PREFIX}/lib/libpaho-mqtt3a.dll.a" "${_IMPORT_PREFIX}/bin/libpaho-mqtt3a.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
