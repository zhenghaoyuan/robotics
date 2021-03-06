;; Auto-generated. Do not edit!


(when (boundp 'hw2::IK)
  (if (not (find-package "HW2"))
    (make-package "HW2"))
  (shadow 'IK (find-package "HW2")))
(unless (find-package "HW2::IK")
  (make-package "HW2::IK"))
(unless (find-package "HW2::IKREQUEST")
  (make-package "HW2::IKREQUEST"))
(unless (find-package "HW2::IKRESPONSE")
  (make-package "HW2::IKRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass hw2::IKRequest
  :super ros::object
  :slots (_point ))

(defmethod hw2::IKRequest
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

(defclass hw2::IKResponse
  :super ros::object
  :slots (_joint1 _joint2 _joint3 _joint4 ))

(defmethod hw2::IKResponse
  (:init
   (&key
    ((:joint1 __joint1) 0.0)
    ((:joint2 __joint2) 0.0)
    ((:joint3 __joint3) 0.0)
    ((:joint4 __joint4) 0.0)
    )
   (send-super :init)
   (setq _joint1 (float __joint1))
   (setq _joint2 (float __joint2))
   (setq _joint3 (float __joint3))
   (setq _joint4 (float __joint4))
   self)
  (:joint1
   (&optional __joint1)
   (if __joint1 (setq _joint1 __joint1)) _joint1)
  (:joint2
   (&optional __joint2)
   (if __joint2 (setq _joint2 __joint2)) _joint2)
  (:joint3
   (&optional __joint3)
   (if __joint3 (setq _joint3 __joint3)) _joint3)
  (:joint4
   (&optional __joint4)
   (if __joint4 (setq _joint4 __joint4)) _joint4)
  (:serialization-length
   ()
   (+
    ;; float64 _joint1
    8
    ;; float64 _joint2
    8
    ;; float64 _joint3
    8
    ;; float64 _joint4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joint1
       (sys::poke _joint1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint2
       (sys::poke _joint2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint3
       (sys::poke _joint3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joint4
       (sys::poke _joint4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joint1
     (setq _joint1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint2
     (setq _joint2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint3
     (setq _joint3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joint4
     (setq _joint4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hw2::IK
  :super ros::object
  :slots ())

(setf (get hw2::IK :md5sum-) "1de241a877ec50f4a1867b435486ffb2")
(setf (get hw2::IK :datatype-) "hw2/IK")
(setf (get hw2::IK :request) hw2::IKRequest)
(setf (get hw2::IK :response) hw2::IKResponse)

(defmethod hw2::IKRequest
  (:response () (instance hw2::IKResponse :init)))

(setf (get hw2::IKRequest :md5sum-) "1de241a877ec50f4a1867b435486ffb2")
(setf (get hw2::IKRequest :datatype-) "hw2/IKRequest")
(setf (get hw2::IKRequest :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 joint1
float64 joint2
float64 joint3
float64 joint4

")

(setf (get hw2::IKResponse :md5sum-) "1de241a877ec50f4a1867b435486ffb2")
(setf (get hw2::IKResponse :datatype-) "hw2/IKResponse")
(setf (get hw2::IKResponse :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 joint1
float64 joint2
float64 joint3
float64 joint4

")



(provide :hw2/IK "1de241a877ec50f4a1867b435486ffb2")


