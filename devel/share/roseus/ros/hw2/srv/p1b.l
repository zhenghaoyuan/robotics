;; Auto-generated. Do not edit!


(when (boundp 'hw2::p1b)
  (if (not (find-package "HW2"))
    (make-package "HW2"))
  (shadow 'p1b (find-package "HW2")))
(unless (find-package "HW2::P1B")
  (make-package "HW2::P1B"))
(unless (find-package "HW2::P1BREQUEST")
  (make-package "HW2::P1BREQUEST"))
(unless (find-package "HW2::P1BRESPONSE")
  (make-package "HW2::P1BRESPONSE"))

(in-package "ROS")

(if (not (find-package "FOUNDATIONS_HW2"))
  (ros::roseus-add-msgs "foundations_hw2"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hw2::p1bRequest
  :super ros::object
  :slots (_angle ))

(defmethod hw2::p1bRequest
  (:init
   (&key
    ((:angle __angle) (instance foundations_hw2::JointAngles :init))
    )
   (send-super :init)
   (setq _angle __angle)
   self)
  (:angle
   (&rest __angle)
   (if (keywordp (car __angle))
       (send* _angle __angle)
     (progn
       (if __angle (setq _angle (car __angle)))
       _angle)))
  (:serialization-length
   ()
   (+
    ;; foundations_hw2/JointAngles _angle
    (send _angle :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; foundations_hw2/JointAngles _angle
       (send _angle :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; foundations_hw2/JointAngles _angle
     (send _angle :deserialize buf ptr-) (incf ptr- (send _angle :serialization-length))
   ;;
   self)
  )

(defclass hw2::p1bResponse
  :super ros::object
  :slots (_point ))

(defmethod hw2::p1bResponse
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass hw2::p1b
  :super ros::object
  :slots ())

(setf (get hw2::p1b :md5sum-) "7d585a104a16a335204a108ac91aa0d5")
(setf (get hw2::p1b :datatype-) "hw2/p1b")
(setf (get hw2::p1b :request) hw2::p1bRequest)
(setf (get hw2::p1b :response) hw2::p1bResponse)

(defmethod hw2::p1bRequest
  (:response () (instance hw2::p1bResponse :init)))

(setf (get hw2::p1bRequest :md5sum-) "7d585a104a16a335204a108ac91aa0d5")
(setf (get hw2::p1bRequest :datatype-) "hw2/p1bRequest")
(setf (get hw2::p1bRequest :definition-)
      "foundations_hw2/JointAngles angle

================================================================================
MSG: foundations_hw2/JointAngles
float64[5] angles
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get hw2::p1bResponse :md5sum-) "7d585a104a16a335204a108ac91aa0d5")
(setf (get hw2::p1bResponse :datatype-) "hw2/p1bResponse")
(setf (get hw2::p1bResponse :definition-)
      "foundations_hw2/JointAngles angle

================================================================================
MSG: foundations_hw2/JointAngles
float64[5] angles
---
geometry_msgs/Point point


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :hw2/p1b "7d585a104a16a335204a108ac91aa0d5")


