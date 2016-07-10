// Generated by gencpp from file gatlin/MoveRobotRequest.msg
// DO NOT EDIT!


#ifndef GATLIN_MESSAGE_MOVEROBOTREQUEST_H
#define GATLIN_MESSAGE_MOVEROBOTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace gatlin
{
template <class ContainerAllocator>
struct MoveRobotRequest_
{
  typedef MoveRobotRequest_<ContainerAllocator> Type;

  MoveRobotRequest_()
    : action()
    , ps()  {
    }
  MoveRobotRequest_(const ContainerAllocator& _alloc)
    : action(_alloc)
    , ps(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _action_type;
  _action_type action;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _ps_type;
  _ps_type ps;




  typedef boost::shared_ptr< ::gatlin::MoveRobotRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gatlin::MoveRobotRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveRobotRequest_

typedef ::gatlin::MoveRobotRequest_<std::allocator<void> > MoveRobotRequest;

typedef boost::shared_ptr< ::gatlin::MoveRobotRequest > MoveRobotRequestPtr;
typedef boost::shared_ptr< ::gatlin::MoveRobotRequest const> MoveRobotRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gatlin::MoveRobotRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gatlin::MoveRobotRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gatlin

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'gatlin': ['/home/cs4752/ros_ws/src/gatlin/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gatlin::MoveRobotRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gatlin::MoveRobotRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gatlin::MoveRobotRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8fd82d9c299a8ff1becf5233f3961cc4";
  }

  static const char* value(const ::gatlin::MoveRobotRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8fd82d9c299a8ff1ULL;
  static const uint64_t static_value2 = 0xbecf5233f3961cc4ULL;
};

template<class ContainerAllocator>
struct DataType< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gatlin/MoveRobotRequest";
  }

  static const char* value(const ::gatlin::MoveRobotRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string action\n\
geometry_msgs/PoseStamped ps\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::gatlin::MoveRobotRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
      stream.next(m.ps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct MoveRobotRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gatlin::MoveRobotRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gatlin::MoveRobotRequest_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.action);
    s << indent << "ps: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.ps);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GATLIN_MESSAGE_MOVEROBOTREQUEST_H
