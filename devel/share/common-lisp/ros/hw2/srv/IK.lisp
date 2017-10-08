; Auto-generated. Do not edit!


(cl:in-package hw2-srv)


;//! \htmlinclude IK-request.msg.html

(cl:defclass <IK-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass IK-request (<IK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw2-srv:<IK-request> is deprecated: use hw2-srv:IK-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:point-val is deprecated.  Use hw2-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-request>) ostream)
  "Serializes a message object of type '<IK-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-request>) istream)
  "Deserializes a message object of type '<IK-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-request>)))
  "Returns string type for a service object of type '<IK-request>"
  "hw2/IKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-request)))
  "Returns string type for a service object of type 'IK-request"
  "hw2/IKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-request>)))
  "Returns md5sum for a message object of type '<IK-request>"
  "1de241a877ec50f4a1867b435486ffb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-request)))
  "Returns md5sum for a message object of type 'IK-request"
  "1de241a877ec50f4a1867b435486ffb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-request>)))
  "Returns full string definition for message of type '<IK-request>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-request)))
  "Returns full string definition for message of type 'IK-request"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude IK-response.msg.html

(cl:defclass <IK-response> (roslisp-msg-protocol:ros-message)
  ((joint1
    :reader joint1
    :initarg :joint1
    :type cl:float
    :initform 0.0)
   (joint2
    :reader joint2
    :initarg :joint2
    :type cl:float
    :initform 0.0)
   (joint3
    :reader joint3
    :initarg :joint3
    :type cl:float
    :initform 0.0)
   (joint4
    :reader joint4
    :initarg :joint4
    :type cl:float
    :initform 0.0))
)

(cl:defclass IK-response (<IK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw2-srv:<IK-response> is deprecated: use hw2-srv:IK-response instead.")))

(cl:ensure-generic-function 'joint1-val :lambda-list '(m))
(cl:defmethod joint1-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:joint1-val is deprecated.  Use hw2-srv:joint1 instead.")
  (joint1 m))

(cl:ensure-generic-function 'joint2-val :lambda-list '(m))
(cl:defmethod joint2-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:joint2-val is deprecated.  Use hw2-srv:joint2 instead.")
  (joint2 m))

(cl:ensure-generic-function 'joint3-val :lambda-list '(m))
(cl:defmethod joint3-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:joint3-val is deprecated.  Use hw2-srv:joint3 instead.")
  (joint3 m))

(cl:ensure-generic-function 'joint4-val :lambda-list '(m))
(cl:defmethod joint4-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:joint4-val is deprecated.  Use hw2-srv:joint4 instead.")
  (joint4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-response>) ostream)
  "Serializes a message object of type '<IK-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-response>) istream)
  "Deserializes a message object of type '<IK-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint4) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-response>)))
  "Returns string type for a service object of type '<IK-response>"
  "hw2/IKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-response)))
  "Returns string type for a service object of type 'IK-response"
  "hw2/IKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-response>)))
  "Returns md5sum for a message object of type '<IK-response>"
  "1de241a877ec50f4a1867b435486ffb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-response)))
  "Returns md5sum for a message object of type 'IK-response"
  "1de241a877ec50f4a1867b435486ffb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-response>)))
  "Returns full string definition for message of type '<IK-response>"
  (cl:format cl:nil "float64 joint1~%float64 joint2~%float64 joint3~%float64 joint4~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-response)))
  "Returns full string definition for message of type 'IK-response"
  (cl:format cl:nil "float64 joint1~%float64 joint2~%float64 joint3~%float64 joint4~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-response>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-response
    (cl:cons ':joint1 (joint1 msg))
    (cl:cons ':joint2 (joint2 msg))
    (cl:cons ':joint3 (joint3 msg))
    (cl:cons ':joint4 (joint4 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IK)))
  'IK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IK)))
  'IK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK)))
  "Returns string type for a service object of type '<IK>"
  "hw2/IK")