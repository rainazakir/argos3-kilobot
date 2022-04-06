# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_BUNDLE "OFF")
set(CPACK_BINARY_DEB "OFF")
set(CPACK_BINARY_DRAGNDROP "OFF")
set(CPACK_BINARY_FREEBSD "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "OFF")
set(CPACK_BINARY_OSXX11 "OFF")
set(CPACK_BINARY_PACKAGEMAKER "OFF")
set(CPACK_BINARY_PRODUCTBUILD "OFF")
set(CPACK_BINARY_RPM "OFF")
set(CPACK_BINARY_STGZ "ON")
set(CPACK_BINARY_TBZ2 "OFF")
set(CPACK_BINARY_TGZ "ON")
set(CPACK_BINARY_TXZ "OFF")
set(CPACK_BUILD_SOURCE_DIRS "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/ARGoS_simulation;/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/build")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/build/postinst;")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "argos3_simulator (>= 3.0.0)")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "ARGoS-Kilobot (Kilobot plugin for ARGoS)
 A plugin to support the Kilobot robot (https://www.kilobotics.com/)
 into the ARGoS multi-robot simulator (http://www.argos-sim.info/).")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "http://github.com/ilpincy/argos3-kilobot/")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Carlo Pinciroli <ilpincy@gmail.com>")
set(CPACK_DEBIAN_PACKAGE_SECTION "contrib/science")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/usr/local/Cellar/cmake/3.22.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "argos3_simulator built using CMake")
set(CPACK_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/ARGoS_simulation;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/ARGoS_simulation/cmake;/usr/local/share/argos3/cmake;/usr/local/share/argos3/cmake")
set(CPACK_NSIS_DISPLAY_NAME "argos3plugins_simulator_kilobot ..")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "argos3plugins_simulator_kilobot ..")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OSX_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION "ARGoS-Kilobot (Kilobot plugin for ARGoS)
 A plugin to support the Kilobot robot (https://www.kilobotics.com/)
 into the ARGoS multi-robot simulator (http://www.argos-sim.info/).")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/local/Cellar/cmake/3.22.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Kilobot support for ARGoS")
set(CPACK_PACKAGE_FILE_NAME "argos3plugins_simulator_kilobot-..-Source")
set(CPACK_PACKAGE_HOMEPAGE "http://github.com/ilpincy/argos3-kilobot/")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "argos3plugins_simulator_kilobot ..")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "argos3plugins_simulator_kilobot ..")
set(CPACK_PACKAGE_MAINTAINER "Carlo Pinciroli <ilpincy@gmail.com>")
set(CPACK_PACKAGE_NAME "argos3plugins_simulator_kilobot")
set(CPACK_PACKAGE_RELEASE "")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "..")
set(CPACK_PACKAGE_VERSION_MAJOR "")
set(CPACK_PACKAGE_VERSION_MINOR "")
set(CPACK_PACKAGE_VERSION_PATCH "")
set(CPACK_PACKAGING_INSTALL_PREFIX "/usr/local")
set(CPACK_RESOURCE_FILE_LICENSE "/usr/local/Cellar/cmake/3.22.1/share/cmake/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/usr/local/Cellar/cmake/3.22.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/local/Cellar/cmake/3.22.1/share/cmake/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_DESCRIPTION "ARGoS-Kilobot (Kilobot plugin for ARGoS)
 A plugin to support the Kilobot robot (https://www.kilobotics.com/)
 into the ARGoS multi-robot simulator (http://www.argos-sim.info/).")
set(CPACK_RPM_PACKAGE_GROUP "Development/Tools")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_REQUIRES "argos3_simulator >= 3.0.0")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_RPM_PACKAGE_URL "http://github.com/ilpincy/argos3-kilobot/")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/ARGoS_simulation;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "argos3plugins_simulator_kilobot-..-Source")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Darwin")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/raina/Documents/argosim/kilogridselfsourcednewpoll/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
