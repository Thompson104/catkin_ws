; Auto-generated. Do not edit!


(cl:in-package leap_motion_controller-msg)


;//! \htmlinclude Hand.msg.html

(cl:defclass <Hand> (roslisp-msg-protocol:ros-message)
  ((is_present
    :reader is_present
    :initarg :is_present
    :type cl:boolean
    :initform cl:nil)
   (palm_pose
    :reader palm_pose
    :initarg :palm_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (palm_velocity
    :reader palm_velocity
    :initarg :palm_velocity
    :type geometry_msgs-msg:Vector3Stamped
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3Stamped))
   (sphere_radius
    :reader sphere_radius
    :initarg :sphere_radius
    :type cl:float
    :initform 0.0)
   (pinch_strength
    :reader pinch_strength
    :initarg :pinch_strength
    :type cl:float
    :initform 0.0)
   (key_tap
    :reader key_tap
    :initarg :key_tap
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Hand (<Hand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Hand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Hand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name leap_motion_controller-msg:<Hand> is deprecated: use leap_motion_controller-msg:Hand instead.")))

(cl:ensure-generic-function 'is_present-val :lambda-list '(m))
(cl:defmethod is_present-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:is_present-val is deprecated.  Use leap_motion_controller-msg:is_present instead.")
  (is_present m))

(cl:ensure-generic-function 'palm_pose-val :lambda-list '(m))
(cl:defmethod palm_pose-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:palm_pose-val is deprecated.  Use leap_motion_controller-msg:palm_pose instead.")
  (palm_pose m))

(cl:ensure-generic-function 'palm_velocity-val :lambda-list '(m))
(cl:defmethod palm_velocity-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:palm_velocity-val is deprecated.  Use leap_motion_controller-msg:palm_velocity instead.")
  (palm_velocity m))

(cl:ensure-generic-function 'sphere_radius-val :lambda-list '(m))
(cl:defmethod sphere_radius-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:sphere_radius-val is deprecated.  Use leap_motion_controller-msg:sphere_radius instead.")
  (sphere_radius m))

(cl:ensure-generic-function 'pinch_strength-val :lambda-list '(m))
(cl:defmethod pinch_strength-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:pinch_strength-val is deprecated.  Use leap_motion_controller-msg:pinch_strength instead.")
  (pinch_strength m))

(cl:ensure-generic-function 'key_tap-val :lambda-list '(m))
(cl:defmethod key_tap-val ((m <Hand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader leap_motion_controller-msg:key_tap-val is deprecated.  Use leap_motion_controller-msg:key_tap instead.")
  (key_tap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Hand>) ostream)
  "Serializes a message object of type '<Hand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_present) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'palm_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'palm_velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sphere_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pinch_strength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_tap) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Hand>) istream)
  "Deserializes a message object of type '<Hand>"
    (cl:setf (cl:slot-value msg 'is_present) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'palm_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'palm_velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sphere_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pinch_strength) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'key_tap) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Hand>)))
  "Returns string type for a message object of type '<Hand>"
  "leap_motion_controller/Hand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Hand)))
  "Returns string type for a message object of type 'Hand"
  "leap_motion_controller/Hand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Hand>)))
  "Returns md5sum for a message object of type '<Hand>"
  "51609a3515f052500f2602710bb2f7ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Hand)))
  "Returns md5sum for a message object of type 'Hand"
  "51609a3515f052500f2602710bb2f7ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Hand>)))
  "Returns full string definition for message of type '<Hand>"
  (cl:format cl:nil "# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:~%#    z forward~%#    x right~%#    y down~%~%bool is_present					# TRUE if this hand is a valid hand (left or right), FALSE otherwise.~%geometry_msgs/PoseStamped palm_pose		# Contains the center position of the palm in meters from the Leap Motion Controller origin and the quaternion orientation of the palm.~%geometry_msgs/Vector3Stamped palm_velocity	# The rate of change of the palm position in meters per second. ~%float32 sphere_radius				# The radius of a sphere fit to the curvature of this hand. This sphere is placed roughly as if the hand were holding a ball. Thus the size of the sphere decreases as the fingers are curled into a fist.~%float32 pinch_strength				# The strength is zero for an open hand, and blends to 1.0 when a pinching hand pose is recognized.~%bool key_tap					# TRUE if KEY_TAP gesture has been detected on this hand, FALSE otherwise.~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Hand)))
  "Returns full string definition for message of type 'Hand"
  (cl:format cl:nil "# For position, Leap Motion Controller uses '_optical' axis orientation, i.e.:~%#    z forward~%#    x right~%#    y down~%~%bool is_present					# TRUE if this hand is a valid hand (left or right), FALSE otherwise.~%geometry_msgs/PoseStamped palm_pose		# Contains the center position of the palm in meters from the Leap Motion Controller origin and the quaternion orientation of the palm.~%geometry_msgs/Vector3Stamped palm_velocity	# The rate of change of the palm position in meters per second. ~%float32 sphere_radius				# The radius of a sphere fit to the curvature of this hand. This sphere is placed roughly as if the hand were holding a ball. Thus the size of the sphere decreases as the fingers are curled into a fist.~%float32 pinch_strength				# The strength is zero for an open hand, and blends to 1.0 when a pinching hand pose is recognized.~%bool key_tap					# TRUE if KEY_TAP gesture has been detected on this hand, FALSE otherwise.~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3Stamped~%# This represents a Vector3 with reference coordinate frame and timestamp~%Header header~%Vector3 vector~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Hand>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'palm_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'palm_velocity))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Hand>))
  "Converts a ROS message object to a list"
  (cl:list 'Hand
    (cl:cons ':is_present (is_present msg))
    (cl:cons ':palm_pose (palm_pose msg))
    (cl:cons ':palm_velocity (palm_velocity msg))
    (cl:cons ':sphere_radius (sphere_radius msg))
    (cl:cons ':pinch_strength (pinch_strength msg))
    (cl:cons ':key_tap (key_tap msg))
))
