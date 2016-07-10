; Auto-generated. Do not edit!


(cl:in-package gatlin-srv)


;//! \htmlinclude Action-request.msg.html

(cl:defclass <Action-request> (roslisp-msg-protocol:ros-message)
  ((action
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

(cl:defclass Action-request (<Action-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Action-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Action-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gatlin-srv:<Action-request> is deprecated: use gatlin-srv:Action-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <Action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-srv:action-val is deprecated.  Use gatlin-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'args-val :lambda-list '(m))
(cl:defmethod args-val ((m <Action-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-srv:args-val is deprecated.  Use gatlin-srv:args instead.")
  (args m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Action-request>) ostream)
  "Serializes a message object of type '<Action-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Action-request>) istream)
  "Deserializes a message object of type '<Action-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Action-request>)))
  "Returns string type for a service object of type '<Action-request>"
  "gatlin/ActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Action-request)))
  "Returns string type for a service object of type 'Action-request"
  "gatlin/ActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Action-request>)))
  "Returns md5sum for a message object of type '<Action-request>"
  "65dca9bb9da789498b2c2eaf09051d97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Action-request)))
  "Returns md5sum for a message object of type 'Action-request"
  "65dca9bb9da789498b2c2eaf09051d97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Action-request>)))
  "Returns full string definition for message of type '<Action-request>"
  (cl:format cl:nil "string action~%string args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Action-request)))
  "Returns full string definition for message of type 'Action-request"
  (cl:format cl:nil "string action~%string args~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Action-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'args))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Action-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Action-request
    (cl:cons ':action (action msg))
    (cl:cons ':args (args msg))
))
;//! \htmlinclude Action-response.msg.html

(cl:defclass <Action-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Action-response (<Action-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Action-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Action-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gatlin-srv:<Action-response> is deprecated: use gatlin-srv:Action-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gatlin-srv:success-val is deprecated.  Use gatlin-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Action-response>) ostream)
  "Serializes a message object of type '<Action-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Action-response>) istream)
  "Deserializes a message object of type '<Action-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Action-response>)))
  "Returns string type for a service object of type '<Action-response>"
  "gatlin/ActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Action-response)))
  "Returns string type for a service object of type 'Action-response"
  "gatlin/ActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Action-response>)))
  "Returns md5sum for a message object of type '<Action-response>"
  "65dca9bb9da789498b2c2eaf09051d97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Action-response)))
  "Returns md5sum for a message object of type 'Action-response"
  "65dca9bb9da789498b2c2eaf09051d97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Action-response>)))
  "Returns full string definition for message of type '<Action-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Action-response)))
  "Returns full string definition for message of type 'Action-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Action-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Action-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Action-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Action)))
  'Action-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Action)))
  'Action-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Action)))
  "Returns string type for a service object of type '<Action>"
  "gatlin/Action")