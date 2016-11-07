; Auto-generated. Do not edit!


(cl:in-package temoto-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scale_by
    :reader scale_by
    :initarg :scale_by
    :type cl:float
    :initform 0.0)
   (live_hand_pose
    :reader live_hand_pose
    :initarg :live_hand_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (cartesian_wayposes
    :reader cartesian_wayposes
    :initarg :cartesian_wayposes
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (in_natural_control_mode
    :reader in_natural_control_mode
    :initarg :in_natural_control_mode
    :type cl:boolean
    :initform cl:nil)
   (orientation_free
    :reader orientation_free
    :initarg :orientation_free
    :type cl:boolean
    :initform cl:nil)
   (position_unlimited
    :reader position_unlimited
    :initarg :position_unlimited
    :type cl:boolean
    :initform cl:nil)
   (position_forward_only
    :reader position_forward_only
    :initarg :position_forward_only
    :type cl:boolean
    :initform cl:nil)
   (in_navigation_mode
    :reader in_navigation_mode
    :initarg :in_navigation_mode
    :type cl:boolean
    :initform cl:nil)
   (end_effector_pose
    :reader end_effector_pose
    :initarg :end_effector_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name temoto-msg:<Status> is deprecated: use temoto-msg:Status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:header-val is deprecated.  Use temoto-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scale_by-val :lambda-list '(m))
(cl:defmethod scale_by-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:scale_by-val is deprecated.  Use temoto-msg:scale_by instead.")
  (scale_by m))

(cl:ensure-generic-function 'live_hand_pose-val :lambda-list '(m))
(cl:defmethod live_hand_pose-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:live_hand_pose-val is deprecated.  Use temoto-msg:live_hand_pose instead.")
  (live_hand_pose m))

(cl:ensure-generic-function 'cartesian_wayposes-val :lambda-list '(m))
(cl:defmethod cartesian_wayposes-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:cartesian_wayposes-val is deprecated.  Use temoto-msg:cartesian_wayposes instead.")
  (cartesian_wayposes m))

(cl:ensure-generic-function 'in_natural_control_mode-val :lambda-list '(m))
(cl:defmethod in_natural_control_mode-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:in_natural_control_mode-val is deprecated.  Use temoto-msg:in_natural_control_mode instead.")
  (in_natural_control_mode m))

(cl:ensure-generic-function 'orientation_free-val :lambda-list '(m))
(cl:defmethod orientation_free-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:orientation_free-val is deprecated.  Use temoto-msg:orientation_free instead.")
  (orientation_free m))

(cl:ensure-generic-function 'position_unlimited-val :lambda-list '(m))
(cl:defmethod position_unlimited-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:position_unlimited-val is deprecated.  Use temoto-msg:position_unlimited instead.")
  (position_unlimited m))

(cl:ensure-generic-function 'position_forward_only-val :lambda-list '(m))
(cl:defmethod position_forward_only-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:position_forward_only-val is deprecated.  Use temoto-msg:position_forward_only instead.")
  (position_forward_only m))

(cl:ensure-generic-function 'in_navigation_mode-val :lambda-list '(m))
(cl:defmethod in_navigation_mode-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:in_navigation_mode-val is deprecated.  Use temoto-msg:in_navigation_mode instead.")
  (in_navigation_mode m))

(cl:ensure-generic-function 'end_effector_pose-val :lambda-list '(m))
(cl:defmethod end_effector_pose-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-msg:end_effector_pose-val is deprecated.  Use temoto-msg:end_effector_pose instead.")
  (end_effector_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'scale_by))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'live_hand_pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cartesian_wayposes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cartesian_wayposes))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_natural_control_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'orientation_free) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_unlimited) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_forward_only) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_navigation_mode) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_effector_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scale_by) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'live_hand_pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cartesian_wayposes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cartesian_wayposes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'in_natural_control_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'orientation_free) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'position_unlimited) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'position_forward_only) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_navigation_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_effector_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "temoto/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "temoto/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "c8695ecd3f5ef0a2fa62cfb57020ea31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "c8695ecd3f5ef0a2fa62cfb57020ea31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 scale_by~%geometry_msgs/PoseStamped live_hand_pose~%geometry_msgs/Pose[] cartesian_wayposes~%~%bool in_natural_control_mode~%bool orientation_free~%bool position_unlimited~%bool position_forward_only~%~%bool in_navigation_mode~%~%geometry_msgs/PoseStamped end_effector_pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "std_msgs/Header header~%~%float64 scale_by~%geometry_msgs/PoseStamped live_hand_pose~%geometry_msgs/Pose[] cartesian_wayposes~%~%bool in_natural_control_mode~%bool orientation_free~%bool position_unlimited~%bool position_forward_only~%~%bool in_navigation_mode~%~%geometry_msgs/PoseStamped end_effector_pose~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'live_hand_pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cartesian_wayposes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_effector_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':header (header msg))
    (cl:cons ':scale_by (scale_by msg))
    (cl:cons ':live_hand_pose (live_hand_pose msg))
    (cl:cons ':cartesian_wayposes (cartesian_wayposes msg))
    (cl:cons ':in_natural_control_mode (in_natural_control_mode msg))
    (cl:cons ':orientation_free (orientation_free msg))
    (cl:cons ':position_unlimited (position_unlimited msg))
    (cl:cons ':position_forward_only (position_forward_only msg))
    (cl:cons ':in_navigation_mode (in_navigation_mode msg))
    (cl:cons ':end_effector_pose (end_effector_pose msg))
))
