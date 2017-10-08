;; Auto-generated. Do not edit!


(when (boundp 'foundations_hw2::Ackermann)
  (if (not (find-package "FOUNDATIONS_HW2"))
    (make-package "FOUNDATIONS_HW2"))
  (shadow 'Ackermann (find-package "FOUNDATIONS_HW2")))
(unless (find-package "FOUNDATIONS_HW2::ACKERMANN")
  (make-package "FOUNDATIONS_HW2::ACKERMANN"))

(in-package "ROS")
;;//! \htmlinclude Ackermann.msg.html


(defclass foundations_hw2::Ackermann
  :super ros::object
  :slots (_steering_angle _vel ))

(defmethod foundations_hw2::Ackermann
  (:init
   (&key
    ((:steering_angle __steering_angle) 0.0)
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _steering_angle (float __steering_angle))
   (setq _vel (float __vel))
   self)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; float64 _steering_angle
    8
    ;; float64 _vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get foundations_hw2::Ackermann :md5sum-) "61c7e29a36f91d9c196a9722234d7472")
(setf (get foundations_hw2::Ackermann :datatype-) "foundations_hw2/Ackermann")
(setf (get foundations_hw2::Ackermann :definition-)
      "float64 steering_angle
float64 vel

")



(provide :foundations_hw2/Ackermann "61c7e29a36f91d9c196a9722234d7472")


