// Generated by gencpp from file temoto/Goal.msg
// DO NOT EDIT!


#ifndef TEMOTO_MESSAGE_GOAL_H
#define TEMOTO_MESSAGE_GOAL_H

#include <ros/service_traits.h>


#include <temoto/GoalRequest.h>
#include <temoto/GoalResponse.h>


namespace temoto
{

struct Goal
{

typedef GoalRequest Request;
typedef GoalResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Goal
} // namespace temoto


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::temoto::Goal > {
  static const char* value()
  {
    return "2b994533f76c06024da617845bb3a48e";
  }

  static const char* value(const ::temoto::Goal&) { return value(); }
};

template<>
struct DataType< ::temoto::Goal > {
  static const char* value()
  {
    return "temoto/Goal";
  }

  static const char* value(const ::temoto::Goal&) { return value(); }
};


// service_traits::MD5Sum< ::temoto::GoalRequest> should match 
// service_traits::MD5Sum< ::temoto::Goal > 
template<>
struct MD5Sum< ::temoto::GoalRequest>
{
  static const char* value()
  {
    return MD5Sum< ::temoto::Goal >::value();
  }
  static const char* value(const ::temoto::GoalRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::temoto::GoalRequest> should match 
// service_traits::DataType< ::temoto::Goal > 
template<>
struct DataType< ::temoto::GoalRequest>
{
  static const char* value()
  {
    return DataType< ::temoto::Goal >::value();
  }
  static const char* value(const ::temoto::GoalRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::temoto::GoalResponse> should match 
// service_traits::MD5Sum< ::temoto::Goal > 
template<>
struct MD5Sum< ::temoto::GoalResponse>
{
  static const char* value()
  {
    return MD5Sum< ::temoto::Goal >::value();
  }
  static const char* value(const ::temoto::GoalResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::temoto::GoalResponse> should match 
// service_traits::DataType< ::temoto::Goal > 
template<>
struct DataType< ::temoto::GoalResponse>
{
  static const char* value()
  {
    return DataType< ::temoto::Goal >::value();
  }
  static const char* value(const ::temoto::GoalResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEMOTO_MESSAGE_GOAL_H
