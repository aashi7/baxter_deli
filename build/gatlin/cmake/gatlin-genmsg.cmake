# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gatlin: 5 messages, 2 services")

set(MSG_I_FLAGS "-Igatlin:/home/cs4752/ros_ws/src/gatlin/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gatlin_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg" NAME_WE)
add_custom_target(_gatlin_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gatlin" "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg" NAME_WE)
add_custom_target(_gatlin_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gatlin" "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg" "gatlin/CommandRequest"
)

get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg" NAME_WE)
add_custom_target(_gatlin_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gatlin" "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:gatlin/Object:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg" NAME_WE)
add_custom_target(_gatlin_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gatlin" "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv" NAME_WE)
add_custom_target(_gatlin_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gatlin" "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv" ""
)

get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg" NAME_WE)
add_custom_target(_gatlin_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gatlin" "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg" ""
)

get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv" NAME_WE)
add_custom_target(_gatlin_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gatlin" "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
)
_generate_msg_cpp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg"
  "${MSG_I_FLAGS}"
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
)
_generate_msg_cpp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
)
_generate_msg_cpp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cs4752/ros_ws/src/gatlin/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
)
_generate_msg_cpp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
)

### Generating Services
_generate_srv_cpp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
)
_generate_srv_cpp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
)

### Generating Module File
_generate_module_cpp(gatlin
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gatlin_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gatlin_generate_messages gatlin_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_cpp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_cpp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_cpp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_cpp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv" NAME_WE)
add_dependencies(gatlin_generate_messages_cpp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_cpp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv" NAME_WE)
add_dependencies(gatlin_generate_messages_cpp _gatlin_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gatlin_gencpp)
add_dependencies(gatlin_gencpp gatlin_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gatlin_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
)
_generate_msg_lisp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg"
  "${MSG_I_FLAGS}"
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
)
_generate_msg_lisp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
)
_generate_msg_lisp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cs4752/ros_ws/src/gatlin/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
)
_generate_msg_lisp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
)

### Generating Services
_generate_srv_lisp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
)
_generate_srv_lisp(gatlin
  "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
)

### Generating Module File
_generate_module_lisp(gatlin
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gatlin_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gatlin_generate_messages gatlin_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_lisp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_lisp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_lisp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_lisp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv" NAME_WE)
add_dependencies(gatlin_generate_messages_lisp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_lisp _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv" NAME_WE)
add_dependencies(gatlin_generate_messages_lisp _gatlin_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gatlin_genlisp)
add_dependencies(gatlin_genlisp gatlin_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gatlin_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
)
_generate_msg_py(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg"
  "${MSG_I_FLAGS}"
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
)
_generate_msg_py(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
)
_generate_msg_py(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/cs4752/ros_ws/src/gatlin/msg/Object.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
)
_generate_msg_py(gatlin
  "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
)

### Generating Services
_generate_srv_py(gatlin
  "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
)
_generate_srv_py(gatlin
  "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
)

### Generating Module File
_generate_module_py(gatlin
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gatlin_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gatlin_generate_messages gatlin_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Object.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_py _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequestList.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_py _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/ObjectList.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_py _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/Mott.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_py _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/Action.srv" NAME_WE)
add_dependencies(gatlin_generate_messages_py _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/msg/CommandRequest.msg" NAME_WE)
add_dependencies(gatlin_generate_messages_py _gatlin_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/cs4752/ros_ws/src/gatlin/srv/MoveRobot.srv" NAME_WE)
add_dependencies(gatlin_generate_messages_py _gatlin_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gatlin_genpy)
add_dependencies(gatlin_genpy gatlin_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gatlin_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gatlin
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(gatlin_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gatlin
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(gatlin_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gatlin
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(gatlin_generate_messages_py geometry_msgs_generate_messages_py)
