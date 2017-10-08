; Auto-generated. Do not edit!


(cl:in-package foundations_hw2-msg)


;//! \htmlinclude EulerAngles.msg.html

(cl:defclass <EulerAngles> (roslisp-msg-protocol:ros-message)
  ((phi
    :reader phi
    :initarg :phi
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (psi
    :reader psi
    :initarg :psi
    :type cl:float
    :initform 0.0))
)

(cl:defclass EulerAngles (<EulerAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw2-msg:<EulerAngles> is deprecated: use foundations_hw2-msg:EulerAngles instead.")))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:phi-val is deprecated.  Use foundations_hw2-msg:phi instead.")
  (phi m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:theta-val is deprecated.  Use foundations_hw2-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'psi-val :lambda-list '(m))
(cl:defmethod psi-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:psi-val is deprecated.  Use foundations_hw2-msg:psi instead.")
  (psi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerAngles>) ostream)
  "Serializes a message object of type '<EulerAngles>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'phi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'psi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerAngles>) istream)
  "Deserializes a message object of type '<EulerAngles>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'psi) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EulerAngles>)))
  "Returns string type for a message object of type '<EulerAngles>"
  "foundations_hw2/EulerAngles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EulerAngles)))
  "Returns string type for a message object of type 'EulerAngles"
  "foundations_hw2/EulerAngles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EulerAngles>)))
  "Returns md5sum for a message object of type '<EulerAngles>"
  "6de4259b4fd46914832c00602a20f670")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerAngles)))
  "Returns md5sum for a message object of type 'EulerAngles"
  "6de4259b4fd46914832c00602a20f670")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerAngles>)))
  "Returns full string definition for message of type '<EulerAngles>"
  (cl:format cl:nil "float64 phi~%float64 theta~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerAngles)))
  "Returns full string definition for message of type 'EulerAngles"
  (cl:format cl:nil "float64 phi~%float64 theta~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerAngles>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerAngles
    (cl:cons ':phi (phi msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':psi (psi msg))
))
