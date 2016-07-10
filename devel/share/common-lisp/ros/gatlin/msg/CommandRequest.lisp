; Auto-generated. Do not edit!


(cl:in-package gatlin-msg)


;//! \htmlinclude CommandRequest.msg.html

(cl:defclass <CommandRequest> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (args
    :reader args
    :initarg :args
    :type cl:string
    :initform ""))
)

(cl:defclass CommandRequest (<CommandRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gatlin-msg:<CommandRequest> is deprecated: use gatlin-msg:CommandRequest instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CommandRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:id-val is deprecated.  Use gatlin-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <CommandRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:action-val is deprecated.  Use gatlin-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <CommandRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-msg:args-val is deprecated.  Use gatlin-msg:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandRequest>) ostream)
  "Serializes a message object of type '<CommandRequest>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'args))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'args))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandRequest>) istream)
  "Deserializes a message object of type '<CommandRequest>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'args) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'args) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandRequest>)))
  "Returns string type for a message object of type '<CommandRequest>"
  "gatlin/CommandRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandRequest)))
  "Returns string type for a message object of type 'CommandRequest"
  "gatlin/CommandRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandRequest>)))
  "Returns md5sum for a message object of type '<CommandRequest>"
  "80a96abcd90528945efe829cd73d06eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandRequest)))
  "Returns md5sum for a message object of type 'CommandRequest"
  "80a96abcd90528945efe829cd73d06eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandRequest>)))
  "Returns full string definition for message of type '<CommandRequest>"
  (cl:format cl:nil "# A command with a action to id the function and lists of PoseStamped and Topic arguments~%string id # \"1\", \"2\"~%string action # \"mott\", \"move_base\", \"move_arm\" ~%~%string args~%# args[\"target_pose\"] = PoseStamped()~%# args[\"obj_topic\"] = \"green_0\"~%~%# geometry_msgs/PoseStamped[] ps_list~%# string[] topic_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandRequest)))
  "Returns full string definition for message of type 'CommandRequest"
  (cl:format cl:nil "# A command with a action to id the function and lists of PoseStamped and Topic arguments~%string id # \"1\", \"2\"~%string action # \"mott\", \"move_base\", \"move_arm\" ~%~%string args~%# args[\"target_pose\"] = PoseStamped()~%# args[\"obj_topic\"] = \"green_0\"~%~%# geometry_msgs/PoseStamped[] ps_list~%# string[] topic_list~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandRequest>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'args))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandRequest
    (cl:cons ':id (id msg))
    (cl:cons ':action (action msg))
    (cl:cons ':args (args msg))
))
