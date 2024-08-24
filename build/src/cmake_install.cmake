# Install script for directory: C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Eclipse Paho C")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/msys64/ucrt64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/libpaho-mqtt3c.dll.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/libpaho-mqtt3c.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libpaho-mqtt3c.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libpaho-mqtt3c.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/msys64/ucrt64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libpaho-mqtt3c.dll")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/libpaho-mqtt3a.dll.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/libpaho-mqtt3a.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libpaho-mqtt3a.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libpaho-mqtt3a.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/msys64/ucrt64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libpaho-mqtt3a.dll")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/MQTTVersion.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/msys64/ucrt64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/MQTTAsync.h"
    "C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/MQTTClient.h"
    "C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/MQTTClientPersistence.h"
    "C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/MQTTProperties.h"
    "C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/MQTTReasonCodes.h"
    "C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/MQTTSubscribeOpts.h"
    "C:/Users/HP/Documents/GitHub/MQTT-Client/Mqtt/client_lib/paho.mqtt.c/src/MQTTExportDeclarations.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig.cmake"
         "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/CMakeFiles/Export/dd175520bdcfdcc5f75bc4f14a6d7fe8/eclipse-paho-mqtt-cConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c" TYPE FILE FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/CMakeFiles/Export/dd175520bdcfdcc5f75bc4f14a6d7fe8/eclipse-paho-mqtt-cConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c" TYPE FILE FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/CMakeFiles/Export/dd175520bdcfdcc5f75bc4f14a6d7fe8/eclipse-paho-mqtt-cConfig-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c" TYPE FILE FILES "C:/Users/HP/Documents/GitHub/MQTT-Client/build/src/eclipse-paho-mqtt-cConfigVersion.cmake")
endif()
