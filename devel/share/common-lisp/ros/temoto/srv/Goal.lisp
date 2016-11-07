; Auto-generated. Do not edit!


(cl:in-package temoto-srv)


;//! \htmlinclude Goal-request.msg.html

(cl:defclass <Goal-request> (roslisp-msg-protocol:ros-message)
  ((action_type
    :reader action_type
    :initarg :action_type
    :type cl:fixnum
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (named_target
    :reader named_target
    :initarg :named_target
    :type cl:string
    :initform "")
   (cartesian_wayposes
    :reader cartesian_wayposes
    :initarg :cartesian_wayposes
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (cartesian_frame
    :reader cartesian_frame
    :initarg :cartesian_frame
    :type cl:string
    :initform "")
   (tolerance_posit
    :reader tolerance_posit
    :initarg :tolerance_posit
    :type cl:float
    :initform 0.0)
   (tolerance_orien
    :reader tolerance_orien
    :initarg :tolerance_orien
    :type cl:float
    :initform 0.0))
)

(cl:defclass Goal-request (<Goal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Goal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Goal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name temoto-srv:<Goal-request> is deprecated: use temoto-srv:Goal-request instead.")))

(cl:ensure-generic-function 'action_type-val :lambda-list '(m))
(cl:defmethod action_type-val ((m <Goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:action_type-val is deprecated.  Use temoto-srv:action_type instead.")
  (action_type m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <Goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:goal-val is deprecated.  Use temoto-srv:goal instead.")
  (goal m))

(cl:ensure-generic-function 'named_target-val :lambda-list '(m))
(cl:defmethod named_target-val ((m <Goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:named_target-val is deprecated.  Use temoto-srv:named_target instead.")
  (named_target m))

(cl:ensure-generic-function 'cartesian_wayposes-val :lambda-list '(m))
(cl:defmethod cartesian_wayposes-val ((m <Goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:cartesian_wayposes-val is deprecated.  Use temoto-srv:cartesian_wayposes instead.")
  (cartesian_wayposes m))

(cl:ensure-generic-function 'cartesian_frame-val :lambda-list '(m))
(cl:defmethod cartesian_frame-val ((m <Goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:cartesian_frame-val is deprecated.  Use temoto-srv:cartesian_frame instead.")
  (cartesian_frame m))

(cl:ensure-generic-function 'tolerance_posit-val :lambda-list '(m))
(cl:defmethod tolerance_posit-val ((m <Goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:tolerance_posit-val is deprecated.  Use temoto-srv:tolerance_posit instead.")
  (tolerance_posit m))

(cl:ensure-generic-function 'tolerance_orien-val :lambda-list '(m))
(cl:defmethod tolerance_orien-val ((m <Goal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:tolerance_orien-val is deprecated.  Use temoto-srv:tolerance_orien instead.")
  (tolerance_orien m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Goal-request>)))
    "Constants for message type '<Goal-request>"
  '((:PLAN . 1)
    (:EXECUTE . 2)
    (:GO . 3)
    (:CARTESIAN_COMPUTE . 4)
    (:ABORT . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Goal-request)))
    "Constants for message type 'Goal-request"
  '((:PLAN . 1)
    (:EXECUTE . 2)
    (:GO . 3)
    (:CARTESIAN_COMPUTE . 4)
    (:ABORT . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Goal-request>) ostream)
  "Serializes a message object of type '<Goal-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'named_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'named_target))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cartesian_wayposes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cartesian_wayposes))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cartesian_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cartesian_frame))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance_posit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tolerance_orien))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Goal-request>) istream)
  "Deserializes a message object of type '<Goal-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'named_target) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'named_target) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cartesian_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cartesian_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance_posit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tolerance_orien) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Goal-request>)))
  "Returns string type for a service object of type '<Goal-request>"
  "temoto/GoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Goal-request)))
  "Returns string type for a service object of type 'Goal-request"
  "temoto/GoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Goal-request>)))
  "Returns md5sum for a message object of type '<Goal-request>"
  "2b994533f76c06024da617845bb3a48e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Goal-request)))
  "Returns md5sum for a message object of type 'Goal-request"
  "2b994533f76c06024da617845bb3a48e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Goal-request>)))
  "Returns full string definition for message of type '<Goal-request>"
  (cl:format cl:nil "uint8 PLAN=1~%uint8 EXECUTE=2~%uint8 GO=3~%uint8 CARTESIAN_COMPUTE=4~%uint8 ABORT=255~%uint8 action_type~%~%~%geometry_msgs/PoseStamped goal~%~%~%string named_target~%~%~%geometry_msgs/Pose[] cartesian_wayposes~%string cartesian_frame~%~%~%~%float32 tolerance_posit~%float32 tolerance_orien~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Goal-request)))
  "Returns full string definition for message of type 'Goal-request"
  (cl:format cl:nil "uint8 PLAN=1~%uint8 EXECUTE=2~%uint8 GO=3~%uint8 CARTESIAN_COMPUTE=4~%uint8 ABORT=255~%uint8 action_type~%~%~%geometry_msgs/PoseStamped goal~%~%~%string named_target~%~%~%geometry_msgs/Pose[] cartesian_wayposes~%string cartesian_frame~%~%~%~%float32 tolerance_posit~%float32 tolerance_orien~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Goal-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     4 (cl:length (cl:slot-value msg 'named_target))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cartesian_wayposes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'cartesian_frame))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Goal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Goal-request
    (cl:cons ':action_type (action_type msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':named_target (named_target msg))
    (cl:cons ':cartesian_wayposes (cartesian_wayposes msg))
    (cl:cons ':cartesian_frame (cartesian_frame msg))
    (cl:cons ':tolerance_posit (tolerance_posit msg))
    (cl:cons ':tolerance_orien (tolerance_orien msg))
))
;//! \htmlinclude Goal-response.msg.html

(cl:defclass <Goal-response> (roslisp-msg-protocol:ros-message)
  ((cartesian_fraction
    :reader cartesian_fraction
    :initarg :cartesian_fraction
    :type cl:float
    :initform 0.0))
)

(cl:defclass Goal-response (<Goal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Goal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Goal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name temoto-srv:<Goal-response> is deprecated: use temoto-srv:Goal-response instead.")))

(cl:ensure-generic-function 'cartesian_fraction-val :lambda-list '(m))
(cl:defmethod cartesian_fraction-val ((m <Goal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:cartesian_fraction-val is deprecated.  Use temoto-srv:cartesian_fraction instead.")
  (cartesian_fraction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Goal-response>) ostream)
  "Serializes a message object of type '<Goal-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cartesian_fraction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Goal-response>) istream)
  "Deserializes a message object of type '<Goal-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cartesian_fraction) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Goal-response>)))
  "Returns string type for a service object of type '<Goal-response>"
  "temoto/GoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Goal-response)))
  "Returns string type for a service object of type 'Goal-response"
  "temoto/GoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Goal-response>)))
  "Returns md5sum for a message object of type '<Goal-response>"
  "2b994533f76c06024da617845bb3a48e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Goal-response)))
  "Returns md5sum for a message object of type 'Goal-response"
  "2b994533f76c06024da617845bb3a48e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Goal-response>)))
  "Returns full string definition for message of type '<Goal-response>"
  (cl:format cl:nil "~%float32 cartesian_fraction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Goal-response)))
  "Returns full string definition for message of type 'Goal-response"
  (cl:format cl:nil "~%float32 cartesian_fraction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Goal-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Goal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Goal-response
    (cl:cons ':cartesian_fraction (cartesian_fraction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Goal)))
  'Goal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Goal)))
  'Goal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Goal)))
  "Returns string type for a service object of type '<Goal>"
  "temoto/Goal")