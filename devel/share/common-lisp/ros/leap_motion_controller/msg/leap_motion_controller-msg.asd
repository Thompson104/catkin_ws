
(cl:in-package :asdf)

(defsystem "leap_motion_controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Finger" :depends-on ("_package_Finger"))
    (:file "_package_Finger" :depends-on ("_package"))
    (:file "Set" :depends-on ("_package_Set"))
    (:file "_package_Set" :depends-on ("_package"))
    (:file "Hand" :depends-on ("_package_Hand"))
    (:file "_package_Hand" :depends-on ("_package"))
  ))