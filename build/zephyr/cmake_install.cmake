# Install script for directory: /home/plam/Projects/zephyr

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/arch/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/lib/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/misc/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/boards/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/ext/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/subsys/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/drivers/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/tests/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/kernel/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/cmake/flash/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/cmake/usage/cmake_install.cmake")
  include("/home/plam/Projects/MOTIUS/kotblinky/build/zephyr/cmake/reports/cmake_install.cmake")

endif()

