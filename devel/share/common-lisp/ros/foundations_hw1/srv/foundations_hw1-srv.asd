
(cl:in-package :asdf)

(defsystem "foundations_hw1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :turtlesim-msg
)
  :components ((:file "_package")
    (:file "Escape" :depends-on ("_package_Escape"))
    (:file "_package_Escape" :depends-on ("_package"))
    (:file "Reward" :depends-on ("_package_Reward"))
    (:file "_package_Reward" :depends-on ("_package"))
  ))