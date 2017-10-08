; Auto-generated. Do not edit!


(cl:in-package foundations_hw1-srv)


;//! \htmlinclude Reward-request.msg.html

(cl:defclass <Reward-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Reward-request (<Reward-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reward-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reward-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw1-srv:<Reward-request> is deprecated: use foundations_hw1-srv:Reward-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Reward-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw1-srv:point-val is deprecated.  Use foundations_hw1-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reward-request>) ostream)
  "Serializes a message object of type '<Reward-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reward-request>) istream)
  "Deserializes a message object of type '<Reward-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reward-request>)))
  "Returns string type for a service object of type '<Reward-request>"
  "foundations_hw1/RewardRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reward-request)))
  "Returns string type for a service object of type 'Reward-request"
  "foundations_hw1/RewardRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reward-request>)))
  "Returns md5sum for a message object of type '<Reward-request>"
  "e4b5d32ae3ca1cd1c0a07d0712fcdd49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reward-request)))
  "Returns md5sum for a message object of type 'Reward-request"
  "e4b5d32ae3ca1cd1c0a07d0712fcdd49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reward-request>)))
  "Returns full string definition for message of type '<Reward-request>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reward-request)))
  "Returns full string definition for message of type 'Reward-request"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reward-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reward-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Reward-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude Reward-response.msg.html

(cl:defclass <Reward-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass Reward-response (<Reward-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reward-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reward-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw1-srv:<Reward-response> is deprecated: use foundations_hw1-srv:Reward-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Reward-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw1-srv:value-val is deprecated.  Use foundations_hw1-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reward-response>) ostream)
  "Serializes a message object of type '<Reward-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reward-response>) istream)
  "Deserializes a message object of type '<Reward-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reward-response>)))
  "Returns string type for a service object of type '<Reward-response>"
  "foundations_hw1/RewardResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reward-response)))
  "Returns string type for a service object of type 'Reward-response"
  "foundations_hw1/RewardResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reward-response>)))
  "Returns md5sum for a message object of type '<Reward-response>"
  "e4b5d32ae3ca1cd1c0a07d0712fcdd49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reward-response)))
  "Returns md5sum for a message object of type 'Reward-response"
  "e4b5d32ae3ca1cd1c0a07d0712fcdd49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reward-response>)))
  "Returns full string definition for message of type '<Reward-response>"
  (cl:format cl:nil "float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reward-response)))
  "Returns full string definition for message of type 'Reward-response"
  (cl:format cl:nil "float64 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reward-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reward-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Reward-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Reward)))
  'Reward-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Reward)))
  'Reward-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reward)))
  "Returns string type for a service object of type '<Reward>"
  "foundations_hw1/Reward")