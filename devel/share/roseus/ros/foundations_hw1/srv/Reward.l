;; Auto-generated. Do not edit!


(when (boundp 'foundations_hw1::Reward)
  (if (not (find-package "FOUNDATIONS_HW1"))
    (make-package "FOUNDATIONS_HW1"))
  (shadow 'Reward (find-package "FOUNDATIONS_HW1")))
(unless (find-package "FOUNDATIONS_HW1::REWARD")
  (make-package "FOUNDATIONS_HW1::REWARD"))
(unless (find-package "FOUNDATIONS_HW1::REWARDREQUEST")
  (make-package "FOUNDATIONS_HW1::REWARDREQUEST"))
(unless (find-package "FOUNDATIONS_HW1::REWARDRESPONSE")
  (make-package "FOUNDATIONS_HW1::REWARDRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass foundations_hw1::RewardRequest
  :super ros::object
  :slots (_point ))

(defmethod foundations_hw1::RewardRequest
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

(defclass foundations_hw1::RewardResponse
  :super ros::object
  :slots (_value ))

(defmethod foundations_hw1::RewardResponse
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass foundations_hw1::Reward
  :super ros::object
  :slots ())

(setf (get foundations_hw1::Reward :md5sum-) "e4b5d32ae3ca1cd1c0a07d0712fcdd49")
(setf (get foundations_hw1::Reward :datatype-) "foundations_hw1/Reward")
(setf (get foundations_hw1::Reward :request) foundations_hw1::RewardRequest)
(setf (get foundations_hw1::Reward :response) foundations_hw1::RewardResponse)

(defmethod foundations_hw1::RewardRequest
  (:response () (instance foundations_hw1::RewardResponse :init)))

(setf (get foundations_hw1::RewardRequest :md5sum-) "e4b5d32ae3ca1cd1c0a07d0712fcdd49")
(setf (get foundations_hw1::RewardRequest :datatype-) "foundations_hw1/RewardRequest")
(setf (get foundations_hw1::RewardRequest :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 value

")

(setf (get foundations_hw1::RewardResponse :md5sum-) "e4b5d32ae3ca1cd1c0a07d0712fcdd49")
(setf (get foundations_hw1::RewardResponse :datatype-) "foundations_hw1/RewardResponse")
(setf (get foundations_hw1::RewardResponse :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 value

")



(provide :foundations_hw1/Reward "e4b5d32ae3ca1cd1c0a07d0712fcdd49")


