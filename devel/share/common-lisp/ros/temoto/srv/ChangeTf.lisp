; Auto-generated. Do not edit!


(cl:in-package temoto-srv)


;//! \htmlinclude ChangeTf-request.msg.html

(cl:defclass <ChangeTf-request> (roslisp-msg-protocol:ros-message)
  ((first_person_perspective
    :reader first_person_perspective
    :initarg :first_person_perspective
    :type cl:boolean
    :initform cl:nil)
   (navigate
    :reader navigate
    :initarg :navigate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeTf-request (<ChangeTf-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeTf-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeTf-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name temoto-srv:<ChangeTf-request> is deprecated: use temoto-srv:ChangeTf-request instead.")))

(cl:ensure-generic-function 'first_person_perspective-val :lambda-list '(m))
(cl:defmethod first_person_perspective-val ((m <ChangeTf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:first_person_perspective-val is deprecated.  Use temoto-srv:first_person_perspective instead.")
  (first_person_perspective m))

(cl:ensure-generic-function 'navigate-val :lambda-list '(m))
(cl:defmethod navigate-val ((m <ChangeTf-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader temoto-srv:navigate-val is deprecated.  Use temoto-srv:navigate instead.")
  (navigate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeTf-request>) ostream)
  "Serializes a message object of type '<ChangeTf-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'first_person_perspective) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'navigate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeTf-request>) istream)
  "Deserializes a message object of type '<ChangeTf-request>"
    (cl:setf (cl:slot-value msg 'first_person_perspective) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'navigate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeTf-request>)))
  "Returns string type for a service object of type '<ChangeTf-request>"
  "temoto/ChangeTfRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTf-request)))
  "Returns string type for a service object of type 'ChangeTf-request"
  "temoto/ChangeTfRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeTf-request>)))
  "Returns md5sum for a message object of type '<ChangeTf-request>"
  "71007a2b9f41e14c743b5fced1fcc480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeTf-request)))
  "Returns md5sum for a message object of type 'ChangeTf-request"
  "71007a2b9f41e14c743b5fced1fcc480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeTf-request>)))
  "Returns full string definition for message of type '<ChangeTf-request>"
  (cl:format cl:nil "bool first_person_perspective~%bool navigate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeTf-request)))
  "Returns full string definition for message of type 'ChangeTf-request"
  (cl:format cl:nil "bool first_person_perspective~%bool navigate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeTf-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeTf-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeTf-request
    (cl:cons ':first_person_perspective (first_person_perspective msg))
    (cl:cons ':navigate (navigate msg))
))
;//! \htmlinclude ChangeTf-response.msg.html

(cl:defclass <ChangeTf-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ChangeTf-response (<ChangeTf-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeTf-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeTf-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name temoto-srv:<ChangeTf-response> is deprecated: use temoto-srv:ChangeTf-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeTf-response>) ostream)
  "Serializes a message object of type '<ChangeTf-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeTf-response>) istream)
  "Deserializes a message object of type '<ChangeTf-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeTf-response>)))
  "Returns string type for a service object of type '<ChangeTf-response>"
  "temoto/ChangeTfResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTf-response)))
  "Returns string type for a service object of type 'ChangeTf-response"
  "temoto/ChangeTfResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeTf-response>)))
  "Returns md5sum for a message object of type '<ChangeTf-response>"
  "71007a2b9f41e14c743b5fced1fcc480")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeTf-response)))
  "Returns md5sum for a message object of type 'ChangeTf-response"
  "71007a2b9f41e14c743b5fced1fcc480")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeTf-response>)))
  "Returns full string definition for message of type '<ChangeTf-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeTf-response)))
  "Returns full string definition for message of type 'ChangeTf-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeTf-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeTf-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeTf-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeTf)))
  'ChangeTf-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeTf)))
  'ChangeTf-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeTf)))
  "Returns string type for a service object of type '<ChangeTf>"
  "temoto/ChangeTf")