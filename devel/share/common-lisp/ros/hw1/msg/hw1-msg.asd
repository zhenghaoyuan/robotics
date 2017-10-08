
(cl:in-package :asdf)

(defsystem "hw1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gradient" :depends-on ("_package_gradient"))
    (:file "_package_gradient" :depends-on ("_package"))
  ))