; Auto-generated. Do not edit!


(cl:in-package hw2-srv)


;//! \htmlinclude p1b-request.msg.html

(cl:defclass <p1b-request> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type foundations_hw2-msg:JointAngles
    :initform (cl:make-instance 'foundations_hw2-msg:JointAngles)))
)

(cl:defclass p1b-request (<p1b-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <p1b-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'p1b-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw2-srv:<p1b-request> is deprecated: use hw2-srv:p1b-request instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <p1b-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:angle-val is deprecated.  Use hw2-srv:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <p1b-request>) ostream)
  "Serializes a message object of type '<p1b-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <p1b-request>) istream)
  "Deserializes a message object of type '<p1b-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<p1b-request>)))
  "Returns string type for a service object of type '<p1b-request>"
  "hw2/p1bRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'p1b-request)))
  "Returns string type for a service object of type 'p1b-request"
  "hw2/p1bRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<p1b-request>)))
  "Returns md5sum for a message object of type '<p1b-request>"
  "7d585a104a16a335204a108ac91aa0d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'p1b-request)))
  "Returns md5sum for a message object of type 'p1b-request"
  "7d585a104a16a335204a108ac91aa0d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<p1b-request>)))
  "Returns full string definition for message of type '<p1b-request>"
  (cl:format cl:nil "foundations_hw2/JointAngles angle~%~%================================================================================~%MSG: foundations_hw2/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'p1b-request)))
  "Returns full string definition for message of type 'p1b-request"
  (cl:format cl:nil "foundations_hw2/JointAngles angle~%~%================================================================================~%MSG: foundations_hw2/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <p1b-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <p1b-request>))
  "Converts a ROS message object to a list"
  (cl:list 'p1b-request
    (cl:cons ':angle (angle msg))
))
;//! \htmlinclude p1b-response.msg.html

(cl:defclass <p1b-response> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass p1b-response (<p1b-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <p1b-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'p1b-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw2-srv:<p1b-response> is deprecated: use hw2-srv:p1b-response instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <p1b-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:point-val is deprecated.  Use hw2-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <p1b-response>) ostream)
  "Serializes a message object of type '<p1b-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <p1b-response>) istream)
  "Deserializes a message object of type '<p1b-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<p1b-response>)))
  "Returns string type for a service object of type '<p1b-response>"
  "hw2/p1bResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'p1b-response)))
  "Returns string type for a service object of type 'p1b-response"
  "hw2/p1bResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<p1b-response>)))
  "Returns md5sum for a message object of type '<p1b-response>"
  "7d585a104a16a335204a108ac91aa0d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'p1b-response)))
  "Returns md5sum for a message object of type 'p1b-response"
  "7d585a104a16a335204a108ac91aa0d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<p1b-response>)))
  "Returns full string definition for message of type '<p1b-response>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'p1b-response)))
  "Returns full string definition for message of type 'p1b-response"
  (cl:format cl:nil "geometry_msgs/Point point~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <p1b-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <p1b-response>))
  "Converts a ROS message object to a list"
  (cl:list 'p1b-response
    (cl:cons ':point (point msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'p1b)))
  'p1b-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'p1b)))
  'p1b-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'p1b)))
  "Returns string type for a service object of type '<p1b>"
  "hw2/p1b")