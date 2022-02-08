# Install script for directory: /Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/kilobot/control_interface" TYPE FILE FILES
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/ci_kilobot_communication_actuator.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/ci_kilobot_communication_sensor.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/ci_kilobot_controller.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/ci_kilobot_led_actuator.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/ci_kilobot_light_sensor.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/kilolib.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/debug.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/message.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/control_interface/message_crc.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/argos3/plugins/robots/kilobot/simulator" TYPE FILE FILES
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/dynamics2d_kilobot_model.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/pointmass3d_kilobot_model.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_entity.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_measures.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_led_default_actuator.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_light_rotzonly_sensor.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_communication_default_actuator.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_communication_default_sensor.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_communication_entity.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/kilobot_communication_medium.h"
    "/Users/rzakir/Documents/argosim/argos3-kilobot/src/plugins/robots/kilobot/simulator/qtopengl_kilobot.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE SHARED_LIBRARY FILES "/Users/rzakir/Documents/argosim/argos3-kilobot/build/plugins/robots/kilobot/libargos3plugin_simulator_kilobot.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilobot.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilobot.dylib")
    execute_process(COMMAND "/usr/bin/install_name_tool"
      -id "libargos3plugin_simulator_kilobot.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilobot.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/usr/local/lib/argos3"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilobot.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilobot.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/argos3" TYPE STATIC_LIBRARY FILES "/Users/rzakir/Documents/argosim/argos3-kilobot/build/plugins/robots/kilobot/libargos3plugin_simulator_kilolib.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilolib.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilolib.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/argos3/libargos3plugin_simulator_kilolib.a")
  endif()
endif()

