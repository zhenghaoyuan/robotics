
(cl:in-package :asdf)

(defsystem "foundations_hw2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :foundations_hw2-msg
)
  :components ((:file "_package")
    (:file "Interpolate" :depends-on ("_package_Interpolate"))
    (:file "_package_Interpolate" :depends-on ("_package"))
  ))