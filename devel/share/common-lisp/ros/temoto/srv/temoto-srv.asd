
(cl:in-package :asdf)

(defsystem "temoto-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ChangeTf" :depends-on ("_package_ChangeTf"))
    (:file "_package_ChangeTf" :depends-on ("_package"))
    (:file "Goal" :depends-on ("_package_Goal"))
    (:file "_package_Goal" :depends-on ("_package"))
  ))