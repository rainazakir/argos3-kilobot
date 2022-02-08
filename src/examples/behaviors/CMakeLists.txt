if(ARGOS_BUILD_FOR_SIMULATOR)
  include_directories(${CMAKE_SOURCE_DIR}/plugins/robots/kilobot/control_interface)
  #
  # : test red
  #
  add_executable(testred test_debug.h test_red.c)
  target_link_libraries(testred argos3plugin_simulator_kilolib)

  # : test blue
  #
  add_executable(testblue test_debug.h test_blue.c)
  target_link_libraries(testblue argos3plugin_simulator_kilolib)
  #
endif(ARGOS_BUILD_FOR_SIMULATOR)
