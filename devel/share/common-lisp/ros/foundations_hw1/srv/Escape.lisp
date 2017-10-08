; Auto-generated. Do not edit!


(cl:in-package foundations_hw1-srv)


;//! \htmlinclude Escape-request.msg.html

(cl:defclass <Escape-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type turtlesim-msg:Pose
    :initform (cl:make-instance 'turtlesim-msg:Pose))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Escape-request (<Escape-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Escape-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Escape-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw1-srv:<Escape-request> is deprecated: use foundations_hw1-srv:Escape-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Escape-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw1-srv:pose-val is deprecated.  Use foundations_hw1-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Escape-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw1-srv:name-val is deprecated.  Use foundations_hw1-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Escape-request>) ostream)
  "Serializes a message object of type '<Escape-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Escape-request>) istream)
  "Deserializes a message object of type '<Escape-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Escape-request>)))
  "Returns string type for a service object of type '<Escape-request>"
  "foundations_hw1/EscapeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Escape-request)))
  "Returns string type for a service object of type 'Escape-request"
  "foundations_hw1/EscapeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Escape-request>)))
  "Returns md5sum for a message object of type '<Escape-request>"
  "89ed0fab02445014d3380c75507816b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Escape-request)))
  "Returns md5sum for a message object of type 'Escape-request"
  "89ed0fab02445014d3380c75507816b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Escape-request>)))
  "Returns full string definition for message of type '<Escape-request>"
  (cl:format cl:nil "turtlesim/Pose pose~%string name~%~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Escape-request)))
  "Returns full string definition for message of type 'Escape-request"
  (cl:format cl:nil "turtlesim/Pose pose~%string name~%~%================================================================================~%MSG: turtlesim/Pose~%float32 x~%float32 y~%float32 theta~%~%float32 linear_velocity~%float32 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Escape-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Escape-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Escape-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':name (name msg))
))
;//! \htmlinclude Escape-response.msg.html

(cl:defclass <Escape-response> (roslisp-msg-protocol:ros-message)
  ((goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Escape-response (<Escape-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Escape-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Escape-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw1-srv:<Escape-response> is deprecated: use foundations_hw1-srv:Escape-response instead.")))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <Escape-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw1-srv:goal-val is deprecated.  Use foundations_hw1-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Escape-response>) ostream)
  "Serializes a message object of type '<Escape-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Escape-response>) istream)
  "Deserializes a message object of type '<Escape-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Escape-response>)))
  "Returns string type for a service object of type '<Escape-response>"
  "foundations_hw1/EscapeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Escape-response)))
  "Returns string type for a service object of type 'Escape-response"
  "foundations_hw1/EscapeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Escape-response>)))
  "Returns md5sum for a message object of type '<Escape-response>"
  "89ed0fab02445014d3380c75507816b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Escape-response)))
  "Returns md5sum for a message object of type 'Escape-response"
  "89ed0fab02445014d3380c75507816b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Escape-response>)))
  "Returns full string definition for message of type '<Escape-response>"
  (cl:format cl:nil "geometry_msgs/Point goal~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Escape-response)))
  "Returns full string definition for message of type 'Escape-response"
  (cl:format cl:nil "geometry_msgs/Point goal~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Escape-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Escape-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Escape-response
    (cl:cons ':goal (goal msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Escape)))
  'Escape-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Escape)))
  'Escape-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Escape)))
  "Returns string type for a service object of type '<Escape>"
  "foundations_hw1/Escape")