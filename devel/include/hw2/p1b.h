// Generated by gencpp from file hw2/p1b.msg
// DO NOT EDIT!


#ifndef HW2_MESSAGE_P1B_H
#define HW2_MESSAGE_P1B_H

#include <ros/service_traits.h>


#include <hw2/p1bRequest.h>
#include <hw2/p1bResponse.h>


namespace hw2
{

struct p1b
{

typedef p1bRequest Request;
typedef p1bResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct p1b
} // namespace hw2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hw2::p1b > {
  static const char* value()
  {
    return "7d585a104a16a335204a108ac91aa0d5";
  }

  static const char* value(const ::hw2::p1b&) { return value(); }
};

template<>
struct DataType< ::hw2::p1b > {
  static const char* value()
  {
    return "hw2/p1b";
  }

  static const char* value(const ::hw2::p1b&) { return value(); }
};


// service_traits::MD5Sum< ::hw2::p1bRequest> should match 
// service_traits::MD5Sum< ::hw2::p1b > 
template<>
struct MD5Sum< ::hw2::p1bRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hw2::p1b >::value();
  }
  static const char* value(const ::hw2::p1bRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hw2::p1bRequest> should match 
// service_traits::DataType< ::hw2::p1b > 
template<>
struct DataType< ::hw2::p1bRequest>
{
  static const char* value()
  {
    return DataType< ::hw2::p1b >::value();
  }
  static const char* value(const ::hw2::p1bRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hw2::p1bResponse> should match 
// service_traits::MD5Sum< ::hw2::p1b > 
template<>
struct MD5Sum< ::hw2::p1bResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hw2::p1b >::value();
  }
  static const char* value(const ::hw2::p1bResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hw2::p1bResponse> should match 
// service_traits::DataType< ::hw2::p1b > 
template<>
struct DataType< ::hw2::p1bResponse>
{
  static const char* value()
  {
    return DataType< ::hw2::p1b >::value();
  }
  static const char* value(const ::hw2::p1bResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HW2_MESSAGE_P1B_H
