# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hw2: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/lunar/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/lunar/share/geometry_msgs/cmake/../msg;-Ifoundations_hw2:/home/cs4750/catkin/src/foundations_hw2/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hw2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p3a.srv" NAME_WE)
add_custom_target(_hw2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hw2" "/home/cs4750/catkin/src/hw2/srv/p3a.srv" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p2b.srv" NAME_WE)
add_custom_target(_hw2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hw2" "/home/cs4750/catkin/src/hw2/srv/p2b.srv" "std_msgs/MultiArrayLayout:foundations_hw2/JointAngles:std_msgs/MultiArrayDimension:std_msgs/Float64MultiArray"
)

get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p1b.srv" NAME_WE)
add_custom_target(_hw2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hw2" "/home/cs4750/catkin/src/hw2/srv/p1b.srv" "foundations_hw2/JointAngles:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(hw2
  "/home/cs4750/catkin/src/hw2/srv/p2b.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hw2
)
_generate_srv_cpp(hw2
  "/home/cs4750/catkin/src/hw2/srv/p3a.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hw2
)
_generate_srv_cpp(hw2
  "/home/cs4750/catkin/src/hw2/srv/p1b.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hw2
)

### Generating Module File
_generate_module_cpp(hw2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hw2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hw2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hw2_generate_messages hw2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p3a.srv" NAME_WE)
add_dependencies(hw2_generate_messages_cpp _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p2b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_cpp _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p1b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_cpp _hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hw2_gencpp)
add_dependencies(hw2_gencpp hw2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hw2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(hw2
  "/home/cs4750/catkin/src/hw2/srv/p2b.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hw2
)
_generate_srv_eus(hw2
  "/home/cs4750/catkin/src/hw2/srv/p3a.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hw2
)
_generate_srv_eus(hw2
  "/home/cs4750/catkin/src/hw2/srv/p1b.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hw2
)

### Generating Module File
_generate_module_eus(hw2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hw2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hw2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hw2_generate_messages hw2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p3a.srv" NAME_WE)
add_dependencies(hw2_generate_messages_eus _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p2b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_eus _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p1b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_eus _hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hw2_geneus)
add_dependencies(hw2_geneus hw2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hw2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(hw2
  "/home/cs4750/catkin/src/hw2/srv/p2b.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hw2
)
_generate_srv_lisp(hw2
  "/home/cs4750/catkin/src/hw2/srv/p3a.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hw2
)
_generate_srv_lisp(hw2
  "/home/cs4750/catkin/src/hw2/srv/p1b.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hw2
)

### Generating Module File
_generate_module_lisp(hw2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hw2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hw2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hw2_generate_messages hw2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p3a.srv" NAME_WE)
add_dependencies(hw2_generate_messages_lisp _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p2b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_lisp _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p1b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_lisp _hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hw2_genlisp)
add_dependencies(hw2_genlisp hw2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hw2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(hw2
  "/home/cs4750/catkin/src/hw2/srv/p2b.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hw2
)
_generate_srv_nodejs(hw2
  "/home/cs4750/catkin/src/hw2/srv/p3a.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hw2
)
_generate_srv_nodejs(hw2
  "/home/cs4750/catkin/src/hw2/srv/p1b.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hw2
)

### Generating Module File
_generate_module_nodejs(hw2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hw2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hw2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hw2_generate_messages hw2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p3a.srv" NAME_WE)
add_dependencies(hw2_generate_messages_nodejs _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p2b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_nodejs _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p1b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_nodejs _hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hw2_gennodejs)
add_dependencies(hw2_gennodejs hw2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hw2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(hw2
  "/home/cs4750/catkin/src/hw2/srv/p2b.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/lunar/share/std_msgs/cmake/../msg/Float64MultiArray.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hw2
)
_generate_srv_py(hw2
  "/home/cs4750/catkin/src/hw2/srv/p3a.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hw2
)
_generate_srv_py(hw2
  "/home/cs4750/catkin/src/hw2/srv/p1b.srv"
  "${MSG_I_FLAGS}"
  "/home/cs4750/catkin/src/foundations_hw2/msg/JointAngles.msg;/opt/ros/lunar/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hw2
)

### Generating Module File
_generate_module_py(hw2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hw2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hw2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hw2_generate_messages hw2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p3a.srv" NAME_WE)
add_dependencies(hw2_generate_messages_py _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p2b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_py _hw2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4750/catkin/src/hw2/srv/p1b.srv" NAME_WE)
add_dependencies(hw2_generate_messages_py _hw2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hw2_genpy)
add_dependencies(hw2_genpy hw2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hw2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hw2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hw2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hw2_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET foundations_hw2_generate_messages_cpp)
  add_dependencies(hw2_generate_messages_cpp foundations_hw2_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hw2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hw2_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hw2_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET foundations_hw2_generate_messages_eus)
  add_dependencies(hw2_generate_messages_eus foundations_hw2_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hw2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hw2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hw2_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET foundations_hw2_generate_messages_lisp)
  add_dependencies(hw2_generate_messages_lisp foundations_hw2_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hw2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hw2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hw2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hw2_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET foundations_hw2_generate_messages_nodejs)
  add_dependencies(hw2_generate_messages_nodejs foundations_hw2_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hw2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hw2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hw2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hw2_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hw2_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET foundations_hw2_generate_messages_py)
  add_dependencies(hw2_generate_messages_py foundations_hw2_generate_messages_py)
endif()
