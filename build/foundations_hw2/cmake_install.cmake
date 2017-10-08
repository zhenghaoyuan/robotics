# Install script for directory: /home/cs4750/catkin/src/foundations_hw2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/cs4750/catkin/install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  include("/home/cs4750/catkin/build/foundations_hw2/catkin_generated/safe_execute_install.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/msg" TYPE FILE FILES
    "/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg"
    "/home/cs4750/catkin/src/foundations_hw2/msg/EulerAngles.msg"
    "/home/cs4750/catkin/src/foundations_hw2/msg/EulerAnglesPair.msg"
    "/home/cs4750/catkin/src/foundations_hw2/msg/Ackermann.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/srv" TYPE FILE FILES "/home/cs4750/catkin/src/foundations_hw2/srv/Interpolate.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/cmake" TYPE FILE FILES "/home/cs4750/catkin/build/foundations_hw2/catkin_generated/installspace/foundations_hw2-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/cs4750/catkin/devel/include/foundations_hw2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/cs4750/catkin/devel/share/roseus/ros/foundations_hw2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/cs4750/catkin/devel/share/common-lisp/ros/foundations_hw2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/cs4750/catkin/devel/share/gennodejs/ros/foundations_hw2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/cs4750/catkin/devel/lib/python2.7/dist-packages/foundations_hw2")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/cs4750/catkin/devel/lib/python2.7/dist-packages/foundations_hw2" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/cs4750/catkin/devel/lib/python2.7/dist-packages/foundations_hw2" FILES_MATCHING REGEX "/home/cs4750/catkin/devel/lib/python2.7/dist-packages/foundations_hw2/.+/__init__.pyc?$")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/cs4750/catkin/build/foundations_hw2/catkin_generated/installspace/foundations_hw2.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/cmake" TYPE FILE FILES "/home/cs4750/catkin/build/foundations_hw2/catkin_generated/installspace/foundations_hw2-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/cmake" TYPE FILE FILES
    "/home/cs4750/catkin/build/foundations_hw2/catkin_generated/installspace/foundations_hw2Config.cmake"
    "/home/cs4750/catkin/build/foundations_hw2/catkin_generated/installspace/foundations_hw2Config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2" TYPE FILE FILES "/home/cs4750/catkin/src/foundations_hw2/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/foundations_hw2" TYPE PROGRAM FILES
    "/home/cs4750/catkin/src/foundations_hw2/bin/start_vrep"
    "/home/cs4750/catkin/src/foundations_hw2/bin/arm_config"
    "/home/cs4750/catkin/src/foundations_hw2/bin/run_effector"
    "/home/cs4750/catkin/src/foundations_hw2/bin/effector_bin"
    "/home/cs4750/catkin/src/foundations_hw2/bin/gen_angles"
    "/home/cs4750/catkin/src/foundations_hw2/bin/gen_vel"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2" TYPE FILE FILES
    "/home/cs4750/catkin/src/foundations_hw2/launch/p1b.launch"
    "/home/cs4750/catkin/src/foundations_hw2/launch/p2b.launch"
    "/home/cs4750/catkin/src/foundations_hw2/launch/p3a.launch"
    "/home/cs4750/catkin/src/foundations_hw2/launch/p3b.launch"
    "/home/cs4750/catkin/src/foundations_hw2/launch/p4a.launch"
    "/home/cs4750/catkin/src/foundations_hw2/launch/p4b.launch"
    "/home/cs4750/catkin/src/foundations_hw2/launch/p5a.launch"
    "/home/cs4750/catkin/src/foundations_hw2/launch/p5b.launch"
    )
endif()

