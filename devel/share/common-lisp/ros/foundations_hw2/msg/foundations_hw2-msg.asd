
(cl:in-package :asdf)

(defsystem "foundations_hw2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Ackermann" :depends-on ("_package_Ackermann"))
    (:file "_package_Ackermann" :depends-on ("_package"))
    (:file "EulerAngles" :depends-on ("_package_EulerAngles"))
    (:file "_package_EulerAngles" :depends-on ("_package"))
    (:file "EulerAnglesPair" :depends-on ("_package_EulerAnglesPair"))
    (:file "_package_EulerAnglesPair" :depends-on ("_package"))
    (:file "JointAngles" :depends-on ("_package_JointAngles"))
    (:file "_package_JointAngles" :depends-on ("_package"))
  ))