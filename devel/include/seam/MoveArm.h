// Generated by gencpp from file seam/MoveArm.msg
// DO NOT EDIT!


#ifndef SEAM_MESSAGE_MOVEARM_H
#define SEAM_MESSAGE_MOVEARM_H

#include <ros/service_traits.h>


#include <seam/MoveArmRequest.h>
#include <seam/MoveArmResponse.h>


namespace seam
{

struct MoveArm
{

typedef MoveArmRequest Request;
typedef MoveArmResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoveArm
} // namespace seam


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::seam::MoveArm > {
  static const char* value()
  {
    return "db67cea7759a1a34670d1fd00cd5055c";
  }

  static const char* value(const ::seam::MoveArm&) { return value(); }
};

template<>
struct DataType< ::seam::MoveArm > {
  static const char* value()
  {
    return "seam/MoveArm";
  }

  static const char* value(const ::seam::MoveArm&) { return value(); }
};


// service_traits::MD5Sum< ::seam::MoveArmRequest> should match 
// service_traits::MD5Sum< ::seam::MoveArm > 
template<>
struct MD5Sum< ::seam::MoveArmRequest>
{
  static const char* value()
  {
    return MD5Sum< ::seam::MoveArm >::value();
  }
  static const char* value(const ::seam::MoveArmRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::seam::MoveArmRequest> should match 
// service_traits::DataType< ::seam::MoveArm > 
template<>
struct DataType< ::seam::MoveArmRequest>
{
  static const char* value()
  {
    return DataType< ::seam::MoveArm >::value();
  }
  static const char* value(const ::seam::MoveArmRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::seam::MoveArmResponse> should match 
// service_traits::MD5Sum< ::seam::MoveArm > 
template<>
struct MD5Sum< ::seam::MoveArmResponse>
{
  static const char* value()
  {
    return MD5Sum< ::seam::MoveArm >::value();
  }
  static const char* value(const ::seam::MoveArmResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::seam::MoveArmResponse> should match 
// service_traits::DataType< ::seam::MoveArm > 
template<>
struct DataType< ::seam::MoveArmResponse>
{
  static const char* value()
  {
    return DataType< ::seam::MoveArm >::value();
  }
  static const char* value(const ::seam::MoveArmResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SEAM_MESSAGE_MOVEARM_H
