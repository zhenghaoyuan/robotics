
(cl:in-package :asdf)

(defsystem "hw2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :foundations_hw2-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "p1b" :depends-on ("_package_p1b"))
    (:file "_package_p1b" :depends-on ("_package"))
    (:file "p2b" :depends-on ("_package_p2b"))
    (:file "_package_p2b" :depends-on ("_package"))
    (:file "p3a" :depends-on ("_package_p3a"))
    (:file "_package_p3a" :depends-on ("_package"))
  ))