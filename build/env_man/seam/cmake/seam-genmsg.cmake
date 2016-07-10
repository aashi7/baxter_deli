# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "seam: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(seam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv" NAME_WE)
add_custom_target(_seam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "seam" "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(seam
  "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seam
)

### Generating Module File
_generate_module_cpp(seam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(seam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(seam_generate_messages seam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv" NAME_WE)
add_dependencies(seam_generate_messages_cpp _seam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seam_gencpp)
add_dependencies(seam_gencpp seam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seam_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(seam
  "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seam
)

### Generating Module File
_generate_module_lisp(seam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(seam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(seam_generate_messages seam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv" NAME_WE)
add_dependencies(seam_generate_messages_lisp _seam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seam_genlisp)
add_dependencies(seam_genlisp seam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seam_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(seam
  "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seam
)

### Generating Module File
_generate_module_py(seam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(seam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(seam_generate_messages seam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4752/ros_ws/src/env_man/seam/srv/MoveArm.srv" NAME_WE)
add_dependencies(seam_generate_messages_py _seam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(seam_genpy)
add_dependencies(seam_genpy seam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS seam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/seam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(seam_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(seam_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(seam_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/seam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(seam_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(seam_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(seam_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/seam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(seam_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(seam_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(seam_generate_messages_py sensor_msgs_generate_messages_py)
