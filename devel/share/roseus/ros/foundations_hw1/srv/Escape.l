;; Auto-generated. Do not edit!


(when (boundp 'foundations_hw1::Escape)
  (if (not (find-package "FOUNDATIONS_HW1"))
    (make-package "FOUNDATIONS_HW1"))
  (shadow 'Escape (find-package "FOUNDATIONS_HW1")))
(unless (find-package "FOUNDATIONS_HW1::ESCAPE")
  (make-package "FOUNDATIONS_HW1::ESCAPE"))
(unless (find-package "FOUNDATIONS_HW1::ESCAPEREQUEST")
  (make-package "FOUNDATIONS_HW1::ESCAPEREQUEST"))
(unless (find-package "FOUNDATIONS_HW1::ESCAPERESPONSE")
  (make-package "FOUNDATIONS_HW1::ESCAPERESPONSE"))

(in-package "ROS")

(if (not (find-package "TURTLESIM"))
  (ros::roseus-add-msgs "turtlesim"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass foundations_hw1::EscapeRequest
  :super ros::object
  :slots (_pose _name ))

(defmethod foundations_hw1::EscapeRequest
  (:init
   (&key
    ((:pose __pose) (instance turtlesim::Pose :init))
    ((:name __name) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _name (string __name))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; turtlesim/Pose _pose
    (send _pose :serialization-length)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; turtlesim/Pose _pose
       (send _pose :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; turtlesim/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass foundations_hw1::EscapeResponse
  :super ros::object
  :slots (_goal ))

(defmethod foundations_hw1::EscapeResponse
  (:init
   (&key
    ((:goal __goal) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _goal __goal)
   self)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass foundations_hw1::Escape
  :super ros::object
  :slots ())

(setf (get foundations_hw1::Escape :md5sum-) "89ed0fab02445014d3380c75507816b5")
(setf (get foundations_hw1::Escape :datatype-) "foundations_hw1/Escape")
(setf (get foundations_hw1::Escape :request) foundations_hw1::EscapeRequest)
(setf (get foundations_hw1::Escape :response) foundations_hw1::EscapeResponse)

(defmethod foundations_hw1::EscapeRequest
  (:response () (instance foundations_hw1::EscapeResponse :init)))

(setf (get foundations_hw1::EscapeRequest :md5sum-) "89ed0fab02445014d3380c75507816b5")
(setf (get foundations_hw1::EscapeRequest :datatype-) "foundations_hw1/EscapeRequest")
(setf (get foundations_hw1::EscapeRequest :definition-)
      "turtlesim/Pose pose
string name

================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
---
geometry_msgs/Point goal


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get foundations_hw1::EscapeResponse :md5sum-) "89ed0fab02445014d3380c75507816b5")
(setf (get foundations_hw1::EscapeResponse :datatype-) "foundations_hw1/EscapeResponse")
(setf (get foundations_hw1::EscapeResponse :definition-)
      "turtlesim/Pose pose
string name

================================================================================
MSG: turtlesim/Pose
float32 x
float32 y
float32 theta

float32 linear_velocity
---
geometry_msgs/Point goal


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :foundations_hw1/Escape "89ed0fab02445014d3380c75507816b5")


