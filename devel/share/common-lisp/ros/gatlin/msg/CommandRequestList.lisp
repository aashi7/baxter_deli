; Auto-generated. Do not edit!


(cl:in-package gatlin-msg)


;//! \htmlinclude CommandRequestList.msg.html

(cl:defclass <CommandRequestList> (roslisp-msg-protocol:ros-message)
  ((commands
    :reader commands
    :initarg :commands
    :type (cl:vector gatlin-msg:CommandRequest)
   :initform (cl:make-array 0 :element-type 'gatlin-msg:CommandRequest :initial-element (cl:make-instance 'gatlin-msg:CommandRequest)))
   (parents
    :reader parents
    :initarg :parents
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (children
    :reader children
    :initarg :children
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass CommandRequestList (<CommandRequestList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandRequestList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandRequestList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gatlin-msg:<CommandRequestList> is deprecated: use gatlin-msg:CommandRequestList instead.")))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <CommandRequestList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:commands-val is deprecated.  Use gatlin-msg:commands instead.")
  (commands m))

(cl:ensure-generic-function 'parents-val :lambda-list '(m))
(cl:defmethod parents-val ((m <CommandRequestList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:parents-val is deprecated.  Use gatlin-msg:parents instead.")
  (parents m))

(cl:ensure-generic-function 'children-val :lambda-list '(m))
(cl:defmethod children-val ((m <CommandRequestList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:children-val is deprecated.  Use gatlin-msg:children instead.")
  (children m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandRequestList>) ostream)
  "Serializes a message object of type '<CommandRequestList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'commands))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'parents))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'parents))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'children))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'children))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandRequestList>) istream)
  "Deserializes a message object of type '<CommandRequestList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gatlin-msg:CommandRequest))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parents) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'parents)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'children) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'children)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandRequestList>)))
  "Returns string type for a message object of type '<CommandRequestList>"
  "gatlin/CommandRequestList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandRequestList)))
  "Returns string type for a message object of type 'CommandRequestList"
  "gatlin/CommandRequestList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandRequestList>)))
  "Returns md5sum for a message object of type '<CommandRequestList>"
  "da3b85fe123dc463810ffe31f9348af5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandRequestList)))
  "Returns md5sum for a message object of type 'CommandRequestList"
  "da3b85fe123dc463810ffe31f9348af5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandRequestList>)))
  "Returns full string definition for message of type '<CommandRequestList>"
  (cl:format cl:nil "# A list of commands and their dependencies~%CommandRequest[] commands~%# ex.	[~%#			{  id: 1, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_7\", target_pose_topic: \"target_1\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  }~%#			{  id: 2, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_2\", target_pose_topic: \"target_2\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  }~%#			{  id: 3, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_3\", target_pose_topic: \"target_3\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  },~%#		]~%~%# Dependency[] dependencies~%string[] parents~%string[] children~%# Note: parents and children must have same length~%# ex. command 2 and 3 have to happen after command 1: [1, 1] and [2, 3]~%# ex. command 3 happens after command 2 and command 2 happens after command 1: [1, 2] and [2, 3]~%================================================================================~%MSG: gatlin/CommandRequest~%# A command with a action to id the function and lists of PoseStamped and Topic arguments~%string id # \"1\", \"2\"~%string action # \"mott\", \"move_base\", \"move_arm\" ~%~%string args~%# args[\"target_pose\"] = PoseStamped()~%# args[\"obj_topic\"] = \"green_0\"~%~%# geometry_msgs/PoseStamped[] ps_list~%# string[] topic_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandRequestList)))
  "Returns full string definition for message of type 'CommandRequestList"
  (cl:format cl:nil "# A list of commands and their dependencies~%CommandRequest[] commands~%# ex.	[~%#			{  id: 1, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_7\", target_pose_topic: \"target_1\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  }~%#			{  id: 2, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_2\", target_pose_topic: \"target_2\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  }~%#			{  id: 3, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_3\", target_pose_topic: \"target_3\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  },~%#		]~%~%# Dependency[] dependencies~%string[] parents~%string[] children~%# Note: parents and children must have same length~%# ex. command 2 and 3 have to happen after command 1: [1, 1] and [2, 3]~%# ex. command 3 happens after command 2 and command 2 happens after command 1: [1, 2] and [2, 3]~%================================================================================~%MSG: gatlin/CommandRequest~%# A command with a action to id the function and lists of PoseStamped and Topic arguments~%string id # \"1\", \"2\"~%string action # \"mott\", \"move_base\", \"move_arm\" ~%~%string args~%# args[\"target_pose\"] = PoseStamped()~%# args[\"obj_topic\"] = \"green_0\"~%~%# geometry_msgs/PoseStamped[] ps_list~%# string[] topic_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandRequestList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'parents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'children) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandRequestList>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandRequestList
    (cl:cons ':commands (commands msg))
    (cl:cons ':parents (parents msg))
    (cl:cons ':children (children msg))
))
