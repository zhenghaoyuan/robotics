; Auto-generated. Do not edit!


(cl:in-package foundations_hw2-srv)


;//! \htmlinclude Interpolate-request.msg.html

(cl:defclass <Interpolate-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Interpolate-request (<Interpolate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interpolate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interpolate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw2-srv:<Interpolate-request> is deprecated: use foundations_hw2-srv:Interpolate-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interpolate-request>) ostream)
  "Serializes a message object of type '<Interpolate-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interpolate-request>) istream)
  "Deserializes a message object of type '<Interpolate-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interpolate-request>)))
  "Returns string type for a service object of type '<Interpolate-request>"
  "foundations_hw2/InterpolateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interpolate-request)))
  "Returns string type for a service object of type 'Interpolate-request"
  "foundations_hw2/InterpolateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interpolate-request>)))
  "Returns md5sum for a message object of type '<Interpolate-request>"
  "30b287eabe6b7c8311d43936111a65f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interpolate-request)))
  "Returns md5sum for a message object of type 'Interpolate-request"
  "30b287eabe6b7c8311d43936111a65f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interpolate-request>)))
  "Returns full string definition for message of type '<Interpolate-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interpolate-request)))
  "Returns full string definition for message of type 'Interpolate-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interpolate-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interpolate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Interpolate-request
))
;//! \htmlinclude Interpolate-response.msg.html

(cl:defclass <Interpolate-response> (roslisp-msg-protocol:ros-message)
  ((initial
    :reader initial
    :initarg :initial
    :type foundations_hw2-msg:EulerAngles
    :initform (cl:make-instance 'foundations_hw2-msg:EulerAngles))
   (final
    :reader final
    :initarg :final
    :type foundations_hw2-msg:EulerAngles
    :initform (cl:make-instance 'foundations_hw2-msg:EulerAngles))
   (seconds
    :reader seconds
    :initarg :seconds
    :type cl:float
    :initform 0.0))
)

(cl:defclass Interpolate-response (<Interpolate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interpolate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interpolate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name foundations_hw2-srv:<Interpolate-response> is deprecated: use foundations_hw2-srv:Interpolate-response instead.")))

(cl:ensure-generic-function 'initial-val :lambda-list '(m))
(cl:defmethod initial-val ((m <Interpolate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-srv:initial-val is deprecated.  Use foundations_hw2-srv:initial instead.")
  (initial m))

(cl:ensure-generic-function 'final-val :lambda-list '(m))
(cl:defmethod final-val ((m <Interpolate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-srv:final-val is deprecated.  Use foundations_hw2-srv:final instead.")
  (final m))

(cl:ensure-generic-function 'seconds-val :lambda-list '(m))
(cl:defmethod seconds-val ((m <Interpolate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader foundations_hw2-srv:seconds-val is deprecated.  Use foundations_hw2-srv:seconds instead.")
  (seconds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interpolate-response>) ostream)
  "Serializes a message object of type '<Interpolate-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'initial) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interpolate-response>) istream)
  "Deserializes a message object of type '<Interpolate-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'initial) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'seconds) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interpolate-response>)))
  "Returns string type for a service object of type '<Interpolate-response>"
  "foundations_hw2/InterpolateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interpolate-response)))
  "Returns string type for a service object of type 'Interpolate-response"
  "foundations_hw2/InterpolateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interpolate-response>)))
  "Returns md5sum for a message object of type '<Interpolate-response>"
  "30b287eabe6b7c8311d43936111a65f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interpolate-response)))
  "Returns md5sum for a message object of type 'Interpolate-response"
  "30b287eabe6b7c8311d43936111a65f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interpolate-response>)))
  "Returns full string definition for message of type '<Interpolate-response>"
  (cl:format cl:nil "EulerAngles initial~%EulerAngles final~%float64 seconds~%~%~%================================================================================~%MSG: foundations_hw2/EulerAngles~%float64 phi~%float64 theta~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interpolate-response)))
  "Returns full string definition for message of type 'Interpolate-response"
  (cl:format cl:nil "EulerAngles initial~%EulerAngles final~%float64 seconds~%~%~%================================================================================~%MSG: foundations_hw2/EulerAngles~%float64 phi~%float64 theta~%float64 psi~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interpolate-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'initial))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interpolate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Interpolate-response
    (cl:cons ':initial (initial msg))
    (cl:cons ':final (final msg))
    (cl:cons ':seconds (seconds msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Interpolate)))
  'Interpolate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Interpolate)))
  'Interpolate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interpolate)))
  "Returns string type for a service object of type '<Interpolate>"
  "foundations_hw2/Interpolate")