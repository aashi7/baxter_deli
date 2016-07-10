
(cl:in-package :asdf)

(defsystem "gatlin-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectList" :depends-on ("_package_ObjectList"))
    (:file "_package_ObjectList" :depends-on ("_package"))
    (:file "ActionResponse" :depends-on ("_package_ActionResponse"))
    (:file "_package_ActionResponse" :depends-on ("_package"))
    (:file "CommandRequest" :depends-on ("_package_CommandRequest"))
    (:file "_package_CommandRequest" :depends-on ("_package"))
    (:file "Mott" :depends-on ("_package_Mott"))
    (:file "_package_Mott" :depends-on ("_package"))
    (:file "ActionRequest" :depends-on ("_package_ActionRequest"))
    (:file "_package_ActionRequest" :depends-on ("_package"))
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "CommandRequestList" :depends-on ("_package_CommandRequestList"))
    (:file "_package_CommandRequestList" :depends-on ("_package"))
  ))