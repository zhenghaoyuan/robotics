# Install script for directory: /home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2

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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/_setup_util.py")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/env.sh")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/setup.bash")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/setup.sh")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/setup.zsh")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/.rosinstall")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/safe_execute_install.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/msg" TYPE FILE FILES
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/msg/JointAngles.msg"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/msg/EulerAngles.msg"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/cmake" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/foundations_hw2-msg-paths.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/include/foundations_hw2")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/share/roseus/ros/foundations_hw2")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/share/common-lisp/ros/foundations_hw2")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/share/gennodejs/ros/foundations_hw2")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/lib/python3.6/site-packages/foundations_hw2")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.6/site-packages" TYPE DIRECTORY FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/lib/python3.6/site-packages/foundations_hw2" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3.6/site-packages" TYPE DIRECTORY FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/lib/python3.6/site-packages/foundations_hw2" FILES_MATCHING REGEX "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/devel/lib/python3.6/site-packages/foundations_hw2/.+/__init__.pyc?$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/foundations_hw2.pc")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/cmake" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/foundations_hw2-msg-extras.cmake")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2/cmake" TYPE FILE FILES
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/foundations_hw2Config.cmake"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/catkin_generated/installspace/foundations_hw2Config-version.cmake"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2" TYPE FILE FILES "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/package.xml")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/foundations_hw2" TYPE PROGRAM FILES
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/bin/start_vrep"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/bin/arm_config"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/bin/effector_position"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/bin/gen_angles"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/bin/gen_vel"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/foundations_hw2" TYPE FILE FILES
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p1b.launch"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p2b.launch"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p2c.launch"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p2d.launch"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p3a.launch"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p3b.launch"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p4a.launch"
    "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/launch/p4b.launch"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/wil/projects/research/foundations-of-robotics/HW/coding/src/kinematics/src/foundations_hw2/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
