# Install script for directory: C:/ncs/v3.4.2/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
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

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/ncs/toolchains/5f5ef0cea0/opt/zephyr-sdk/gnu/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/nrf/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/cjson/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/azure-sdk-for-c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/cirrus-logic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/nrf_wifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/memfault-firmware-sdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/canopennode/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/chre/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/cmsis_6/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/dhara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/hal_tdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/libsbc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/nrfxlib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/modules/connectedhomeip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/cmake/reports/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/tieoliikenteen_projekti/Tietoliikenteen-sovellusprojekti/l4_e2_sol/build_1/l4_e2_sol/zephyr/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
