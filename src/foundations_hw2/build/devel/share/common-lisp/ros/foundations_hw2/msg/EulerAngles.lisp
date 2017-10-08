; Auto-generated. Do not edit!


(cl:in-package foundations_hw2-msg)


;//! \htmlinclude EulerAngles.msg.html

(cl:defclass <EulerAngles> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EulerAngles (<EulerAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EulerAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EulerAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw2-msg:<EulerAngles> is deprecated: use foundations_hw2-msg:EulerAngles instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <EulerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-msg:angles-val is deprecated.  Use foundations_hw2-msg:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EulerAngles>) ostream)
  "Serializes a message object of type '<EulerAngles>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'angles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EulerAngles>) istream)
  "Deserializes a message object of type '<EulerAngles>"
  (cl:setf (cl:slot-value msg 'angles) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'angles)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
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
  "351e9bdf3bd53d4e7c4b2cad44c47f80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EulerAngles)))
  "Returns md5sum for a message object of type 'EulerAngles"
  "351e9bdf3bd53d4e7c4b2cad44c47f80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EulerAngles>)))
  "Returns full string definition for message of type '<EulerAngles>"
  (cl:format cl:nil "float64[3] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EulerAngles)))
  "Returns full string definition for message of type 'EulerAngles"
  (cl:format cl:nil "float64[3] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EulerAngles>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EulerAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'EulerAngles
    (cl:cons ':angles (angles msg))
))
