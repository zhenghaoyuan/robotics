;; Auto-generated. Do not edit!


(when (boundp 'hw2::p2b)
  (if (not (find-package "HW2"))
    (make-package "HW2"))
  (shadow 'p2b (find-package "HW2")))
(unless (find-package "HW2::P2B")
  (make-package "HW2::P2B"))
(unless (find-package "HW2::P2BREQUEST")
  (make-package "HW2::P2BREQUEST"))
(unless (find-package "HW2::P2BRESPONSE")
  (make-package "HW2::P2BRESPONSE"))

(in-package "ROS")

(if (not (find-package "FOUNDATIONS_HW2"))
  (ros::roseus-add-msgs "foundations_hw2"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hw2::p2bRequest
  :super ros::object
  :slots (_angles ))

(defmethod hw2::p2bRequest
  (:init
   (&key
    ((:angles __angles) (instance foundations_hw2::JointAngles :init))
    )
   (send-super :init)
   (setq _angles __angles)
   self)
  (:angles
   (&rest __angles)
   (if (keywordp (car __angles))
       (send* _angles __angles)
     (progn
       (if __angles (setq _angles (car __angles)))
       _angles)))
  (:serialization-length
   ()
   (+
    ;; foundations_hw2/JointAngles _angles
    (send _angles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; foundations_hw2/JointAngles _angles
       (send _angles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; foundations_hw2/JointAngles _angles
     (send _angles :deserialize buf ptr-) (incf ptr- (send _angles :serialization-length))
   ;;
   self)
  )

(defclass hw2::p2bResponse
  :super ros::object
  :slots (_data ))

(defmethod hw2::p2bResponse
  (:init
   (&key
    ((:data __data) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass hw2::p2b
  :super ros::object
  :slots ())

(setf (get hw2::p2b :md5sum-) "bd9ef8a2f54d1aab08300de4419aaf70")
(setf (get hw2::p2b :datatype-) "hw2/p2b")
(setf (get hw2::p2b :request) hw2::p2bRequest)
(setf (get hw2::p2b :response) hw2::p2bResponse)

(defmethod hw2::p2bRequest
  (:response () (instance hw2::p2bResponse :init)))

(setf (get hw2::p2bRequest :md5sum-) "bd9ef8a2f54d1aab08300de4419aaf70")
(setf (get hw2::p2bRequest :datatype-) "hw2/p2bRequest")
(setf (get hw2::p2bRequest :definition-)
      "foundations_hw2/JointAngles angles

================================================================================
MSG: foundations_hw2/JointAngles
float64[5] angles
---
std_msgs/Float64MultiArray data


================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")

(setf (get hw2::p2bResponse :md5sum-) "bd9ef8a2f54d1aab08300de4419aaf70")
(setf (get hw2::p2bResponse :datatype-) "hw2/p2bResponse")
(setf (get hw2::p2bResponse :definition-)
      "foundations_hw2/JointAngles angles

================================================================================
MSG: foundations_hw2/JointAngles
float64[5] angles
---
std_msgs/Float64MultiArray data


================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")



(provide :hw2/p2b "bd9ef8a2f54d1aab08300de4419aaf70")


