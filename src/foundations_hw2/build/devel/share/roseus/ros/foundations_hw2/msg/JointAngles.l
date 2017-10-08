;; Auto-generated. Do not edit!


(when (boundp 'foundations_hw2::JointAngles)
  (if (not (find-package "FOUNDATIONS_HW2"))
    (make-package "FOUNDATIONS_HW2"))
  (shadow 'JointAngles (find-package "FOUNDATIONS_HW2")))
(unless (find-package "FOUNDATIONS_HW2::JOINTANGLES")
  (make-package "FOUNDATIONS_HW2::JOINTANGLES"))

(in-package "ROS")
;;//! \htmlinclude JointAngles.msg.html


(defclass foundations_hw2::JointAngles
  :super ros::object
  :slots (_angles ))

(defmethod foundations_hw2::JointAngles
  (:init
   (&key
    ((:angles __angles) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _angles __angles)
   self)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:serialization-length
   ()
   (+
    ;; float64[5] _angles
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[5] _angles
     (dotimes (i 5)
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[5] _angles
   (dotimes (i (length _angles))
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get foundations_hw2::JointAngles :md5sum-) "266f4497ea1dcf85e7f9989383bff1ae")
(setf (get foundations_hw2::JointAngles :datatype-) "foundations_hw2/JointAngles")
(setf (get foundations_hw2::JointAngles :definition-)
      "float64[5] angles

")



(provide :foundations_hw2/JointAngles "266f4497ea1dcf85e7f9989383bff1ae")


