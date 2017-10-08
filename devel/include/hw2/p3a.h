// Generated by gencpp from file hw2/p3a.msg
// DO NOT EDIT!


#ifndef HW2_MESSAGE_P3A_H
#define HW2_MESSAGE_P3A_H

#include <ros/service_traits.h>


#include <hw2/p3aRequest.h>
#include <hw2/p3aResponse.h>


namespace hw2
{

struct p3a
{

typedef p3aRequest Request;
typedef p3aResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct p3a
} // namespace hw2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hw2::p3a > {
  static const char* value()
  {
    return "1de241a877ec50f4a1867b435486ffb2";
  }

  static const char* value(const ::hw2::p3a&) { return value(); }
};

template<>
struct DataType< ::hw2::p3a > {
  static const char* value()
  {
    return "hw2/p3a";
  }

  static const char* value(const ::hw2::p3a&) { return value(); }
};


// service_traits::MD5Sum< ::hw2::p3aRequest> should match 
// service_traits::MD5Sum< ::hw2::p3a > 
template<>
struct MD5Sum< ::hw2::p3aRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hw2::p3a >::value();
  }
  static const char* value(const ::hw2::p3aRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hw2::p3aRequest> should match 
// service_traits::DataType< ::hw2::p3a > 
template<>
struct DataType< ::hw2::p3aRequest>
{
  static const char* value()
  {
    return DataType< ::hw2::p3a >::value();
  }
  static const char* value(const ::hw2::p3aRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hw2::p3aResponse> should match 
// service_traits::MD5Sum< ::hw2::p3a > 
template<>
struct MD5Sum< ::hw2::p3aResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hw2::p3a >::value();
  }
  static const char* value(const ::hw2::p3aResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hw2::p3aResponse> should match 
// service_traits::DataType< ::hw2::p3a > 
template<>
struct DataType< ::hw2::p3aResponse>
{
  static const char* value()
  {
    return DataType< ::hw2::p3a >::value();
  }
  static const char* value(const ::hw2::p3aResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HW2_MESSAGE_P3A_H
