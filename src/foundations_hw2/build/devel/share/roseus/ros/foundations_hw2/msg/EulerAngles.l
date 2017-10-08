;; Auto-generated. Do not edit!


(when (boundp 'foundations_hw2::EulerAngles)
  (if (not (find-package "FOUNDATIONS_HW2"))
    (make-package "FOUNDATIONS_HW2"))
  (shadow 'EulerAngles (find-package "FOUNDATIONS_HW2")))
(unless (find-package "FOUNDATIONS_HW2::EULERANGLES")
  (make-package "FOUNDATIONS_HW2::EULERANGLES"))

(in-package "ROS")
;;//! \htmlinclude EulerAngles.msg.html


(defclass foundations_hw2::EulerAngles
  :super ros::object
  :slots (_angles ))

(defmethod foundations_hw2::EulerAngles
  (:init
   (&key
    ((:angles __angles) (make-array 3 :initial-element 0.0 :element-type :float))
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
    ;; float64[3] _angles
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _angles
     (dotimes (i 3)
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _angles
   (dotimes (i (length _angles))
     (setf (elt _angles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get foundations_hw2::EulerAngles :md5sum-) "351e9bdf3bd53d4e7c4b2cad44c47f80")
(setf (get foundations_hw2::EulerAngles :datatype-) "foundations_hw2/EulerAngles")
(setf (get foundations_hw2::EulerAngles :definition-)
      "float64[3] angles

")



(provide :foundations_hw2/EulerAngles "351e9bdf3bd53d4e7c4b2cad44c47f80")


