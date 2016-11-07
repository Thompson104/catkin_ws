# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "temoto: 2 messages, 2 services")

set(MSG_I_FLAGS "-Itemoto:/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(temoto_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv" NAME_WE)
add_custom_target(_temoto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "temoto" "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv" ""
)

get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg" NAME_WE)
add_custom_target(_temoto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "temoto" "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv" NAME_WE)
add_custom_target(_temoto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "temoto" "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg" NAME_WE)
add_custom_target(_temoto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "temoto" "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto
)
_generate_msg_cpp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto
)

### Generating Services
_generate_srv_cpp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto
)
_generate_srv_cpp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto
)

### Generating Module File
_generate_module_cpp(temoto
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(temoto_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(temoto_generate_messages temoto_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv" NAME_WE)
add_dependencies(temoto_generate_messages_cpp _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg" NAME_WE)
add_dependencies(temoto_generate_messages_cpp _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv" NAME_WE)
add_dependencies(temoto_generate_messages_cpp _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg" NAME_WE)
add_dependencies(temoto_generate_messages_cpp _temoto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto_gencpp)
add_dependencies(temoto_gencpp temoto_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto
)
_generate_msg_lisp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto
)

### Generating Services
_generate_srv_lisp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto
)
_generate_srv_lisp(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto
)

### Generating Module File
_generate_module_lisp(temoto
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(temoto_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(temoto_generate_messages temoto_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv" NAME_WE)
add_dependencies(temoto_generate_messages_lisp _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg" NAME_WE)
add_dependencies(temoto_generate_messages_lisp _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv" NAME_WE)
add_dependencies(temoto_generate_messages_lisp _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg" NAME_WE)
add_dependencies(temoto_generate_messages_lisp _temoto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto_genlisp)
add_dependencies(temoto_genlisp temoto_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto
)
_generate_msg_py(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto
)

### Generating Services
_generate_srv_py(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto
)
_generate_srv_py(temoto
  "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto
)

### Generating Module File
_generate_module_py(temoto
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(temoto_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(temoto_generate_messages temoto_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/ChangeTf.srv" NAME_WE)
add_dependencies(temoto_generate_messages_py _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Status.msg" NAME_WE)
add_dependencies(temoto_generate_messages_py _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/srv/Goal.srv" NAME_WE)
add_dependencies(temoto_generate_messages_py _temoto_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/conor/catkin_ws/src/temoto_intuitive_teleoperator/temoto/msg/Command.msg" NAME_WE)
add_dependencies(temoto_generate_messages_py _temoto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(temoto_genpy)
add_dependencies(temoto_genpy temoto_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS temoto_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/temoto
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(temoto_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(temoto_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/temoto
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(temoto_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(temoto_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/temoto
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(temoto_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(temoto_generate_messages_py geometry_msgs_generate_messages_py)
