;; Auto-generated. Do not edit!


(when (boundp 'foundations_hw2::Interpolate)
  (if (not (find-package "FOUNDATIONS_HW2"))
    (make-package "FOUNDATIONS_HW2"))
  (shadow 'Interpolate (find-package "FOUNDATIONS_HW2")))
(unless (find-package "FOUNDATIONS_HW2::INTERPOLATE")
  (make-package "FOUNDATIONS_HW2::INTERPOLATE"))
(unless (find-package "FOUNDATIONS_HW2::INTERPOLATEREQUEST")
  (make-package "FOUNDATIONS_HW2::INTERPOLATEREQUEST"))
(unless (find-package "FOUNDATIONS_HW2::INTERPOLATERESPONSE")
  (make-package "FOUNDATIONS_HW2::INTERPOLATERESPONSE"))

(in-package "ROS")





(defclass foundations_hw2::InterpolateRequest
  :super ros::object
  :slots ())

(defmethod foundations_hw2::InterpolateRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass foundations_hw2::InterpolateResponse
  :super ros::object
  :slots (_initial _final _seconds ))

(defmethod foundations_hw2::InterpolateResponse
  (:init
   (&key
    ((:initial __initial) (instance foundations_hw2::EulerAngles :init))
    ((:final __final) (instance foundations_hw2::EulerAngles :init))
    ((:seconds __seconds) 0.0)
    )
   (send-super :init)
   (setq _initial __initial)
   (setq _final __final)
   (setq _seconds (float __seconds))
   self)
  (:initial
   (&rest __initial)
   (if (keywordp (car __initial))
       (send* _initial __initial)
     (progn
       (if __initial (setq _initial (car __initial)))
       _initial)))
  (:final
   (&rest __final)
   (if (keywordp (car __final))
       (send* _final __final)
     (progn
       (if __final (setq _final (car __final)))
       _final)))
  (:seconds
   (&optional __seconds)
   (if __seconds (setq _seconds __seconds)) _seconds)
  (:serialization-length
   ()
   (+
    ;; foundations_hw2/EulerAngles _initial
    (send _initial :serialization-length)
    ;; foundations_hw2/EulerAngles _final
    (send _final :serialization-length)
    ;; float64 _seconds
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; foundations_hw2/EulerAngles _initial
       (send _initial :serialize s)
     ;; foundations_hw2/EulerAngles _final
       (send _final :serialize s)
     ;; float64 _seconds
       (sys::poke _seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; foundations_hw2/EulerAngles _initial
     (send _initial :deserialize buf ptr-) (incf ptr- (send _initial :serialization-length))
   ;; foundations_hw2/EulerAngles _final
     (send _final :deserialize buf ptr-) (incf ptr- (send _final :serialization-length))
   ;; float64 _seconds
     (setq _seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass foundations_hw2::Interpolate
  :super ros::object
  :slots ())

(setf (get foundations_hw2::Interpolate :md5sum-) "30b287eabe6b7c8311d43936111a65f8")
(setf (get foundations_hw2::Interpolate :datatype-) "foundations_hw2/Interpolate")
(setf (get foundations_hw2::Interpolate :request) foundations_hw2::InterpolateRequest)
(setf (get foundations_hw2::Interpolate :response) foundations_hw2::InterpolateResponse)

(defmethod foundations_hw2::InterpolateRequest
  (:response () (instance foundations_hw2::InterpolateResponse :init)))

(setf (get foundations_hw2::InterpolateRequest :md5sum-) "30b287eabe6b7c8311d43936111a65f8")
(setf (get foundations_hw2::InterpolateRequest :datatype-) "foundations_hw2/InterpolateRequest")
(setf (get foundations_hw2::InterpolateRequest :definition-)
      "
---
EulerAngles initial
EulerAngles final
float64 seconds


================================================================================
MSG: foundations_hw2/EulerAngles
float64 phi
float64 theta
float64 psi
")

(setf (get foundations_hw2::InterpolateResponse :md5sum-) "30b287eabe6b7c8311d43936111a65f8")
(setf (get foundations_hw2::InterpolateResponse :datatype-) "foundations_hw2/InterpolateResponse")
(setf (get foundations_hw2::InterpolateResponse :definition-)
      "
---
EulerAngles initial
EulerAngles final
float64 seconds


================================================================================
MSG: foundations_hw2/EulerAngles
float64 phi
float64 theta
float64 psi
")



(provide :foundations_hw2/Interpolate "30b287eabe6b7c8311d43936111a65f8")


