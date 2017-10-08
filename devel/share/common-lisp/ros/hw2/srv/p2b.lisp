; Auto-generated. Do not edit!


(cl:in-package hw2-srv)


;//! \htmlinclude p2b-request.msg.html

(cl:defclass <p2b-request> (roslisp-msg-protocol:ros-message)
  ((angles
    :reader angles
    :initarg :angles
    :type foundations_hw2-msg:JointAngles
    :initform (cl:make-instance 'foundations_hw2-msg:JointAngles)))
)

(cl:defclass p2b-request (<p2b-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <p2b-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'p2b-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw2-srv:<p2b-request> is deprecated: use hw2-srv:p2b-request instead.")))

(cl:ensure-generic-function 'angles-val :lambda-list '(m))
(cl:defmethod angles-val ((m <p2b-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:angles-val is deprecated.  Use hw2-srv:angles instead.")
  (angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <p2b-request>) ostream)
  "Serializes a message object of type '<p2b-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angles) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <p2b-request>) istream)
  "Deserializes a message object of type '<p2b-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angles) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<p2b-request>)))
  "Returns string type for a service object of type '<p2b-request>"
  "hw2/p2bRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'p2b-request)))
  "Returns string type for a service object of type 'p2b-request"
  "hw2/p2bRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<p2b-request>)))
  "Returns md5sum for a message object of type '<p2b-request>"
  "bd9ef8a2f54d1aab08300de4419aaf70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'p2b-request)))
  "Returns md5sum for a message object of type 'p2b-request"
  "bd9ef8a2f54d1aab08300de4419aaf70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<p2b-request>)))
  "Returns full string definition for message of type '<p2b-request>"
  (cl:format cl:nil "foundations_hw2/JointAngles angles~%~%================================================================================~%MSG: foundations_hw2/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'p2b-request)))
  "Returns full string definition for message of type 'p2b-request"
  (cl:format cl:nil "foundations_hw2/JointAngles angles~%~%================================================================================~%MSG: foundations_hw2/JointAngles~%float64[5] angles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <p2b-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angles))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <p2b-request>))
  "Converts a ROS message object to a list"
  (cl:list 'p2b-request
    (cl:cons ':angles (angles msg))
))
;//! \htmlinclude p2b-response.msg.html

(cl:defclass <p2b-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray)))
)

(cl:defclass p2b-response (<p2b-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <p2b-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'p2b-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hw2-srv:<p2b-response> is deprecated: use hw2-srv:p2b-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <p2b-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hw2-srv:data-val is deprecated.  Use hw2-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <p2b-response>) ostream)
  "Serializes a message object of type '<p2b-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <p2b-response>) istream)
  "Deserializes a message object of type '<p2b-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<p2b-response>)))
  "Returns string type for a service object of type '<p2b-response>"
  "hw2/p2bResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'p2b-response)))
  "Returns string type for a service object of type 'p2b-response"
  "hw2/p2bResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<p2b-response>)))
  "Returns md5sum for a message object of type '<p2b-response>"
  "bd9ef8a2f54d1aab08300de4419aaf70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'p2b-response)))
  "Returns md5sum for a message object of type 'p2b-response"
  "bd9ef8a2f54d1aab08300de4419aaf70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<p2b-response>)))
  "Returns full string definition for message of type '<p2b-response>"
  (cl:format cl:nil "std_msgs/Float64MultiArray data~%~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'p2b-response)))
  "Returns full string definition for message of type 'p2b-response"
  (cl:format cl:nil "std_msgs/Float64MultiArray data~%~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <p2b-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <p2b-response>))
  "Converts a ROS message object to a list"
  (cl:list 'p2b-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'p2b)))
  'p2b-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'p2b)))
  'p2b-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'p2b)))
  "Returns string type for a service object of type '<p2b>"
  "hw2/p2b")