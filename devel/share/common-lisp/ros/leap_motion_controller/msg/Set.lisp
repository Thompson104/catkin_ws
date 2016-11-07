; Auto-generated. Do not edit!


(cl:in-package leap_motion_controller-msg)


;//! \htmlinclude Set.msg.html

(cl:defclass <Set> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_hand
    :reader left_hand
    :initarg :left_hand
    :type leap_motion_controller-msg:Hand
    :initform (cl:make-instance 'leap_motion_controller-msg:Hand))
   (right_hand
    :reader right_hand
    :initarg :right_hand
    :type leap_motion_controller-msg:Hand
    :initform (cl:make-instance 'leap_motion_controller-msg:Hand)))
)

(cl:defclass Set (<Set>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Set>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Set)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_motion_controller-msg:<Set> is deprecated: use leap_motion_controller-msg:Set instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Set>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:header-val is deprecated.  Use leap_motion_controller-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_hand-val :lambda-list '(m))
(cl:defmethod left_hand-val ((m <Set>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:left_hand-val is deprecated.  Use leap_motion_controller-msg:left_hand instead.")
  (left_hand m))

(cl:ensure-generic-function 'right_hand-val :lambda-list '(m))
(cl:defmethod right_hand-val ((m <Set>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:right_hand-val is deprecated.  Use leap_motion_controller-msg:right_hand instead.")
  (right_hand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Set>) ostream)
  "Serializes a message object of type '<Set>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_hand) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_hand) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Set>) istream)
  "Deserializes a message object of type '<Set>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_hand) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_hand) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Set>)))
  "Returns string type for a message object of type '<Set>"
  "leap_motion_controller/Set")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Set)))
  "Returns string type for a message object of type 'Set"
  "leap_motion_controller/Set")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Set>)))
  "Returns md5sum for a message object of type '<Set>"
  "e2f4dd9fef2d030ac3f000bf930adc1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Set)))
  "Returns md5sum for a message object of type 'Set"
  "e2f4dd9fef2d030ac3f000bf930adc1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Set>)))
  "Returns full string definition for message of type '<Set>"
  (cl:format cl:nil "# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:~%#    z forward~%#    x right~%#    y down~%~%std_msgs/Header header~%~%leap_motion_controller/Hand left_hand~%~%leap_motion_controller/Hand right_hand~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leap_motion_controller/Hand~%# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:~%#    z forward~%#    x right~%#    y down~%~%bool is_present					# TRUE if this hand is a valid hand (left or right), FALSE otherwise.~%geometry_msgs/PoseStamped palm_pose		# Contains the center position of the palm in meters from the Leap Motion Controller origin and the quaternion orientation of the palm.~%geometry_msgs/Vector3Stamped palm_velocity	# The rate of change of the palm position in meters per second. ~%float32 sphere_radius				# The radius of a sphere fit to the curvature of this hand. This sphere is placed roughly as if the hand were holding a ball. Thus the size of the sphere decreases as the fingers are curled into a fist.~%float32 pinch_strength				# The strength is zero for an open hand, and blends to 1.0 when a pinching hand pose is recognized.~%bool key_tap					# TRUE if KEY_TAP gesture has been detected on this hand, FALSE otherwise.~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Set)))
  "Returns full string definition for message of type 'Set"
  (cl:format cl:nil "# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:~%#    z forward~%#    x right~%#    y down~%~%std_msgs/Header header~%~%leap_motion_controller/Hand left_hand~%~%leap_motion_controller/Hand right_hand~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: leap_motion_controller/Hand~%# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:~%#    z forward~%#    x right~%#    y down~%~%bool is_present					# TRUE if this hand is a valid hand (left or right), FALSE otherwise.~%geometry_msgs/PoseStamped palm_pose		# Contains the center position of the palm in meters from the Leap Motion Controller origin and the quaternion orientation of the palm.~%geometry_msgs/Vector3Stamped palm_velocity	# The rate of change of the palm position in meters per second. ~%float32 sphere_radius				# The radius of a sphere fit to the curvature of this hand. This sphere is placed roughly as if the hand were holding a ball. Thus the size of the sphere decreases as the fingers are curled into a fist.~%float32 pinch_strength				# The strength is zero for an open hand, and blends to 1.0 when a pinching hand pose is recognized.~%bool key_tap					# TRUE if KEY_TAP gesture has been detected on this hand, FALSE otherwise.~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Set>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_hand))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_hand))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Set>))
  "Converts a ROS message object to a list"
  (cl:list 'Set
    (cl:cons ':header (header msg))
    (cl:cons ':left_hand (left_hand msg))
    (cl:cons ':right_hand (right_hand msg))
))
