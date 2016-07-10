
(cl:in-package :asdf)

(defsystem "baxter_maintenance_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CalibrateArmEnable" :depends-on ("_package_CalibrateArmEnable"))
    (:file "_package_CalibrateArmEnable" :depends-on ("_package"))
    (:file "CalibrateArmData" :depends-on ("_package_CalibrateArmData"))
    (:file "_package_CalibrateArmData" :depends-on ("_package"))
    (:file "TareEnable" :depends-on ("_package_TareEnable"))
    (:file "_package_TareEnable" :depends-on ("_package"))
    (:file "UpdateSources" :depends-on ("_package_UpdateSources"))
    (:file "_package_UpdateSources" :depends-on ("_package"))
    (:file "UpdateSource" :depends-on ("_package_UpdateSource"))
    (:file "_package_UpdateSource" :depends-on ("_package"))
    (:file "TareData" :depends-on ("_package_TareData"))
    (:file "_package_TareData" :depends-on ("_package"))
    (:file "UpdateStatus" :depends-on ("_package_UpdateStatus"))
    (:file "_package_UpdateStatus" :depends-on ("_package"))
  ))