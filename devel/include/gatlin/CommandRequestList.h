// Generated by gencpp from file gatlin/CommandRequestList.msg
// DO NOT EDIT!


#ifndef GATLIN_MESSAGE_COMMANDREQUESTLIST_H
#define GATLIN_MESSAGE_COMMANDREQUESTLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <gatlin/CommandRequest.h>

namespace gatlin
{
template <class ContainerAllocator>
struct CommandRequestList_
{
  typedef CommandRequestList_<ContainerAllocator> Type;

  CommandRequestList_()
    : commands()
    , parents()
    , children()  {
    }
  CommandRequestList_(const ContainerAllocator& _alloc)
    : commands(_alloc)
    , parents(_alloc)
    , children(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::gatlin::CommandRequest_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::gatlin::CommandRequest_<ContainerAllocator> >::other >  _commands_type;
  _commands_type commands;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _parents_type;
  _parents_type parents;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _children_type;
  _children_type children;




  typedef boost::shared_ptr< ::gatlin::CommandRequestList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gatlin::CommandRequestList_<ContainerAllocator> const> ConstPtr;

}; // struct CommandRequestList_

typedef ::gatlin::CommandRequestList_<std::allocator<void> > CommandRequestList;

typedef boost::shared_ptr< ::gatlin::CommandRequestList > CommandRequestListPtr;
typedef boost::shared_ptr< ::gatlin::CommandRequestList const> CommandRequestListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gatlin::CommandRequestList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gatlin::CommandRequestList_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::gatlin::CommandRequestList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gatlin::CommandRequestList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gatlin::CommandRequestList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gatlin::CommandRequestList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gatlin::CommandRequestList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gatlin::CommandRequestList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gatlin::CommandRequestList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da3b85fe123dc463810ffe31f9348af5";
  }

  static const char* value(const ::gatlin::CommandRequestList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda3b85fe123dc463ULL;
  static const uint64_t static_value2 = 0x810ffe31f9348af5ULL;
};

template<class ContainerAllocator>
struct DataType< ::gatlin::CommandRequestList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gatlin/CommandRequestList";
  }

  static const char* value(const ::gatlin::CommandRequestList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gatlin::CommandRequestList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A list of commands and their dependencies\n\
CommandRequest[] commands\n\
# ex.	[\n\
#			{  id: 1, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_7\", target_pose_topic: \"target_1\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  }\n\
#			{  id: 2, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_2\", target_pose_topic: \"target_2\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  }\n\
#			{  id: 3, action: \"mott\", args: \"{ command: \"mott\", object_pose_topic: \"ar_3\", target_pose_topic: \"target_3\", object_pose: {PoseStamped}, target_pose: {PoseStamped} }  },\n\
#		]\n\
\n\
# Dependency[] dependencies\n\
string[] parents\n\
string[] children\n\
# Note: parents and children must have same length\n\
# ex. command 2 and 3 have to happen after command 1: [1, 1] and [2, 3]\n\
# ex. command 3 happens after command 2 and command 2 happens after command 1: [1, 2] and [2, 3]\n\
================================================================================\n\
MSG: gatlin/CommandRequest\n\
# A command with a action to id the function and lists of PoseStamped and Topic arguments\n\
string id # \"1\", \"2\"\n\
string action # \"mott\", \"move_base\", \"move_arm\" \n\
\n\
string args\n\
# args[\"target_pose\"] = PoseStamped()\n\
# args[\"obj_topic\"] = \"green_0\"\n\
\n\
# geometry_msgs/PoseStamped[] ps_list\n\
# string[] topic_list\n\
";
  }

  static const char* value(const ::gatlin::CommandRequestList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gatlin::CommandRequestList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.commands);
      stream.next(m.parents);
      stream.next(m.children);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct CommandRequestList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gatlin::CommandRequestList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gatlin::CommandRequestList_<ContainerAllocator>& v)
  {
    s << indent << "commands[]" << std::endl;
    for (size_t i = 0; i < v.commands.size(); ++i)
    {
      s << indent << "  commands[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::gatlin::CommandRequest_<ContainerAllocator> >::stream(s, indent + "    ", v.commands[i]);
    }
    s << indent << "parents[]" << std::endl;
    for (size_t i = 0; i < v.parents.size(); ++i)
    {
      s << indent << "  parents[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.parents[i]);
    }
    s << indent << "children[]" << std::endl;
    for (size_t i = 0; i < v.children.size(); ++i)
    {
      s << indent << "  children[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.children[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // GATLIN_MESSAGE_COMMANDREQUESTLIST_H
