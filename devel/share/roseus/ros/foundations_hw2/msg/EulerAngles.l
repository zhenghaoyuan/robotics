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
  :slots (_phi _theta _psi ))

(defmethod foundations_hw2::EulerAngles
  (:init
   (&key
    ((:phi __phi) 0.0)
    ((:theta __theta) 0.0)
    ((:psi __psi) 0.0)
    )
   (send-super :init)
   (setq _phi (float __phi))
   (setq _theta (float __theta))
   (setq _psi (float __psi))
   self)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:serialization-length
   ()
   (+
    ;; float64 _phi
    8
    ;; float64 _theta
    8
    ;; float64 _psi
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _phi
     (setq _phi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get foundations_hw2::EulerAngles :md5sum-) "6de4259b4fd46914832c00602a20f670")
(setf (get foundations_hw2::EulerAngles :datatype-) "foundations_hw2/EulerAngles")
(setf (get foundations_hw2::EulerAngles :definition-)
      "float64 phi
float64 theta
float64 psi

")



(provide :foundations_hw2/EulerAngles "6de4259b4fd46914832c00602a20f670")


