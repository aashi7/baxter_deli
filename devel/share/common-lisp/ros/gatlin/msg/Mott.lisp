; Auto-generated. Do not edit!


(cl:in-package gatlin-msg)


;//! \htmlinclude Mott.msg.html

(cl:defclass <Mott> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (object_pose_topic
    :reader object_pose_topic
    :initarg :object_pose_topic
    :type cl:string
    :initform "")
   (target_pose_topic
    :reader target_pose_topic
    :initarg :target_pose_topic
    :type cl:string
    :initform "")
   (object_pose
    :reader object_pose
    :initarg :object_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass Mott (<Mott>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mott>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mott)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gatlin-msg:<Mott> is deprecated: use gatlin-msg:Mott instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <Mott>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:command-val is deprecated.  Use gatlin-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'object_pose_topic-val :lambda-list '(m))
(cl:defmethod object_pose_topic-val ((m <Mott>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:object_pose_topic-val is deprecated.  Use gatlin-msg:object_pose_topic instead.")
  (object_pose_topic m))

(cl:ensure-generic-function 'target_pose_topic-val :lambda-list '(m))
(cl:defmethod target_pose_topic-val ((m <Mott>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:target_pose_topic-val is deprecated.  Use gatlin-msg:target_pose_topic instead.")
  (target_pose_topic m))

(cl:ensure-generic-function 'object_pose-val :lambda-list '(m))
(cl:defmethod object_pose-val ((m <Mott>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:object_pose-val is deprecated.  Use gatlin-msg:object_pose instead.")
  (object_pose m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <Mott>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:target_pose-val is deprecated.  Use gatlin-msg:target_pose instead.")
  (target_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mott>) ostream)
  "Serializes a message object of type '<Mott>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_pose_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_pose_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_pose_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_pose_topic))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mott>) istream)
  "Deserializes a message object of type '<Mott>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_pose_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_pose_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_pose_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_pose_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mott>)))
  "Returns string type for a message object of type '<Mott>"
  "gatlin/Mott")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mott)))
  "Returns string type for a message object of type 'Mott"
  "gatlin/Mott")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mott>)))
  "Returns md5sum for a message object of type '<Mott>"
  "09c7bd7ee400c198306f0063cf378105")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mott)))
  "Returns md5sum for a message object of type 'Mott"
  "09c7bd7ee400c198306f0063cf378105")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mott>)))
  "Returns full string definition for message of type '<Mott>"
  (cl:format cl:nil "string command~%string object_pose_topic~%string target_pose_topic~%geometry_msgs/PoseStamped object_pose~%geometry_msgs/PoseStamped target_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mott)))
  "Returns full string definition for message of type 'Mott"
  (cl:format cl:nil "string command~%string object_pose_topic~%string target_pose_topic~%geometry_msgs/PoseStamped object_pose~%geometry_msgs/PoseStamped target_pose~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mott>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'object_pose_topic))
     4 (cl:length (cl:slot-value msg 'target_pose_topic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mott>))
  "Converts a ROS message object to a list"
  (cl:list 'Mott
    (cl:cons ':command (command msg))
    (cl:cons ':object_pose_topic (object_pose_topic msg))
    (cl:cons ':target_pose_topic (target_pose_topic msg))
    (cl:cons ':object_pose (object_pose msg))
    (cl:cons ':target_pose (target_pose msg))
))
