; Auto-generated. Do not edit!


(cl:in-package foundations_hw2-msg)


;//! \htmlinclude Ackermann.msg.html

(cl:defclass <Ackermann> (roslisp-msg-protocol:ros-message)
  ((steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass Ackermann (<Ackermann>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ackermann>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ackermann)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw2-msg:<Ackermann> is deprecated: use foundations_hw2-msg:Ackermann instead.")))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <Ackermann>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:steering_angle-val is deprecated.  Use foundations_hw2-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <Ackermann>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:vel-val is deprecated.  Use foundations_hw2-msg:vel instead.")
  (vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ackermann>) ostream)
  "Serializes a message object of type '<Ackermann>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ackermann>) istream)
  "Deserializes a message object of type '<Ackermann>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ackermann>)))
  "Returns string type for a message object of type '<Ackermann>"
  "foundations_hw2/Ackermann")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ackermann)))
  "Returns string type for a message object of type 'Ackermann"
  "foundations_hw2/Ackermann")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ackermann>)))
  "Returns md5sum for a message object of type '<Ackermann>"
  "61c7e29a36f91d9c196a9722234d7472")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ackermann)))
  "Returns md5sum for a message object of type 'Ackermann"
  "61c7e29a36f91d9c196a9722234d7472")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ackermann>)))
  "Returns full string definition for message of type '<Ackermann>"
  (cl:format cl:nil "float64 steering_angle~%float64 vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ackermann)))
  "Returns full string definition for message of type 'Ackermann"
  (cl:format cl:nil "float64 steering_angle~%float64 vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ackermann>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ackermann>))
  "Converts a ROS message object to a list"
  (cl:list 'Ackermann
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':vel (vel msg))
))
