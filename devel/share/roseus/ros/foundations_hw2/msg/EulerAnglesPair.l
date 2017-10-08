;; Auto-generated. Do not edit!


(when (boundp 'foundations_hw2::EulerAnglesPair)
  (if (not (find-package "FOUNDATIONS_HW2"))
    (make-package "FOUNDATIONS_HW2"))
  (shadow 'EulerAnglesPair (find-package "FOUNDATIONS_HW2")))
(unless (find-package "FOUNDATIONS_HW2::EULERANGLESPAIR")
  (make-package "FOUNDATIONS_HW2::EULERANGLESPAIR"))

(in-package "ROS")
;;//! \htmlinclude EulerAnglesPair.msg.html


(defclass foundations_hw2::EulerAnglesPair
  :super ros::object
  :slots (_a _b ))

(defmethod foundations_hw2::EulerAnglesPair
  (:init
   (&key
    ((:a __a) (instance foundations_hw2::EulerAngles :init))
    ((:b __b) (instance foundations_hw2::EulerAngles :init))
    )
   (send-super :init)
   (setq _a __a)
   (setq _b __b)
   self)
  (:a
   (&rest __a)
   (if (keywordp (car __a))
       (send* _a __a)
     (progn
       (if __a (setq _a (car __a)))
       _a)))
  (:b
   (&rest __b)
   (if (keywordp (car __b))
       (send* _b __b)
     (progn
       (if __b (setq _b (car __b)))
       _b)))
  (:serialization-length
   ()
   (+
    ;; foundations_hw2/EulerAngles _a
    (send _a :serialization-length)
    ;; foundations_hw2/EulerAngles _b
    (send _b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; foundations_hw2/EulerAngles _a
       (send _a :serialize s)
     ;; foundations_hw2/EulerAngles _b
       (send _b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; foundations_hw2/EulerAngles _a
     (send _a :deserialize buf ptr-) (incf ptr- (send _a :serialization-length))
   ;; foundations_hw2/EulerAngles _b
     (send _b :deserialize buf ptr-) (incf ptr- (send _b :serialization-length))
   ;;
   self)
  )

(setf (get foundations_hw2::EulerAnglesPair :md5sum-) "2a491fe66d9bbc50eb04b894ec3d243d")
(setf (get foundations_hw2::EulerAnglesPair :datatype-) "foundations_hw2/EulerAnglesPair")
(setf (get foundations_hw2::EulerAnglesPair :definition-)
      "EulerAngles a
EulerAngles b

================================================================================
MSG: foundations_hw2/EulerAngles
float64 phi
float64 theta
float64 psi

")



(provide :foundations_hw2/EulerAnglesPair "2a491fe66d9bbc50eb04b894ec3d243d")


