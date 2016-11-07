# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "leap_motion_controller: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ileap_motion_controller:/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(leap_motion_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg" NAME_WE)
add_custom_target(_leap_motion_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion_controller" "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg" "geometry_msgs/Vector3Stamped:geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:leap_motion_controller/Hand:std_msgs/Header"
)

get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg" NAME_WE)
add_custom_target(_leap_motion_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion_controller" "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Vector3Stamped:geometry_msgs/Pose:geometry_msgs/PoseStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg" NAME_WE)
add_custom_target(_leap_motion_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "leap_motion_controller" "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion_controller
)
_generate_msg_cpp(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion_controller
)
_generate_msg_cpp(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion_controller
)

### Generating Services

### Generating Module File
_generate_module_cpp(leap_motion_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(leap_motion_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(leap_motion_controller_generate_messages leap_motion_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_cpp _leap_motion_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_cpp _leap_motion_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_cpp _leap_motion_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_controller_gencpp)
add_dependencies(leap_motion_controller_gencpp leap_motion_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_controller_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion_controller
)
_generate_msg_lisp(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion_controller
)
_generate_msg_lisp(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion_controller
)

### Generating Services

### Generating Module File
_generate_module_lisp(leap_motion_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(leap_motion_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(leap_motion_controller_generate_messages leap_motion_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_lisp _leap_motion_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_lisp _leap_motion_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_lisp _leap_motion_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_controller_genlisp)
add_dependencies(leap_motion_controller_genlisp leap_motion_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_controller_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion_controller
)
_generate_msg_py(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3Stamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion_controller
)
_generate_msg_py(leap_motion_controller
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion_controller
)

### Generating Services

### Generating Module File
_generate_module_py(leap_motion_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(leap_motion_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(leap_motion_controller_generate_messages leap_motion_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Set.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_py _leap_motion_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Hand.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_py _leap_motion_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/leap_motion_controller/msg/Finger.msg" NAME_WE)
add_dependencies(leap_motion_controller_generate_messages_py _leap_motion_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(leap_motion_controller_genpy)
add_dependencies(leap_motion_controller_genpy leap_motion_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS leap_motion_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/leap_motion_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(leap_motion_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(leap_motion_controller_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/leap_motion_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(leap_motion_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(leap_motion_controller_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/leap_motion_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(leap_motion_controller_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(leap_motion_controller_generate_messages_py geometry_msgs_generate_messages_py)
