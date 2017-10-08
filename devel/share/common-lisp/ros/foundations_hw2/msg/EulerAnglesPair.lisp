; Auto-generated. Do not edit!


(cl:in-package foundations_hw2-msg)


;//! \htmlinclude EulerAnglesPair.msg.html

(cl:defclass <EulerAnglesPair> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type foundations_hw2-msg:EulerAngles
    :initform (cl:make-instance 'foundations_hw2-msg:EulerAngles))
   (b
    :reader b
    :initarg :b
    :type foundations_hw2-msg:EulerAngles
    :initform (cl:make-instance 'foundations_hw2-msg:EulerAngles)))
)

(cl:defclass EulerAnglesPair (<EulerAnglesPair>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerAnglesPair>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerAnglesPair)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw2-msg:<EulerAnglesPair> is deprecated: use foundations_hw2-msg:EulerAnglesPair instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <EulerAnglesPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:a-val is deprecated.  Use foundations_hw2-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <EulerAnglesPair>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:b-val is deprecated.  Use foundations_hw2-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerAnglesPair>) ostream)
  "Serializes a message object of type '<EulerAnglesPair>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerAnglesPair>) istream)
  "Deserializes a message object of type '<EulerAnglesPair>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EulerAnglesPair>)))
  "Returns string type for a message object of type '<EulerAnglesPair>"
  "foundations_hw2/EulerAnglesPair")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EulerAnglesPair)))
  "Returns string type for a message object of type 'EulerAnglesPair"
  "foundations_hw2/EulerAnglesPair")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EulerAnglesPair>)))
  "Returns md5sum for a message object of type '<EulerAnglesPair>"
  "2a491fe66d9bbc50eb04b894ec3d243d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerAnglesPair)))
  "Returns md5sum for a message object of type 'EulerAnglesPair"
  "2a491fe66d9bbc50eb04b894ec3d243d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerAnglesPair>)))
  "Returns full string definition for message of type '<EulerAnglesPair>"
  (cl:format cl:nil "EulerAngles a~%EulerAngles b~%~%================================================================================~%MSG: foundations_hw2/EulerAngles~%float64 phi~%float64 theta~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerAnglesPair)))
  "Returns full string definition for message of type 'EulerAnglesPair"
  (cl:format cl:nil "EulerAngles a~%EulerAngles b~%~%================================================================================~%MSG: foundations_hw2/EulerAngles~%float64 phi~%float64 theta~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerAnglesPair>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerAnglesPair>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerAnglesPair
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
