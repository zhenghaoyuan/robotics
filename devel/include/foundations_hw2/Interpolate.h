// Generated by gencpp from file foundations_hw2/Interpolate.msg
// DO NOT EDIT!


#ifndef FOUNDATIONS_HW2_MESSAGE_INTERPOLATE_H
#define FOUNDATIONS_HW2_MESSAGE_INTERPOLATE_H

#include <ros/service_traits.h>


#include <foundations_hw2/InterpolateRequest.h>
#include <foundations_hw2/InterpolateResponse.h>


namespace foundations_hw2
{

struct Interpolate
{

typedef InterpolateRequest Request;
typedef InterpolateResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Interpolate
} // namespace foundations_hw2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::foundations_hw2::Interpolate > {
  static const char* value()
  {
    return "30b287eabe6b7c8311d43936111a65f8";
  }

  static const char* value(const ::foundations_hw2::Interpolate&) { return value(); }
};

template<>
struct DataType< ::foundations_hw2::Interpolate > {
  static const char* value()
  {
    return "foundations_hw2/Interpolate";
  }

  static const char* value(const ::foundations_hw2::Interpolate&) { return value(); }
};


// service_traits::MD5Sum< ::foundations_hw2::InterpolateRequest> should match 
// service_traits::MD5Sum< ::foundations_hw2::Interpolate > 
template<>
struct MD5Sum< ::foundations_hw2::InterpolateRequest>
{
  static const char* value()
  {
    return MD5Sum< ::foundations_hw2::Interpolate >::value();
  }
  static const char* value(const ::foundations_hw2::InterpolateRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::foundations_hw2::InterpolateRequest> should match 
// service_traits::DataType< ::foundations_hw2::Interpolate > 
template<>
struct DataType< ::foundations_hw2::InterpolateRequest>
{
  static const char* value()
  {
    return DataType< ::foundations_hw2::Interpolate >::value();
  }
  static const char* value(const ::foundations_hw2::InterpolateRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::foundations_hw2::InterpolateResponse> should match 
// service_traits::MD5Sum< ::foundations_hw2::Interpolate > 
template<>
struct MD5Sum< ::foundations_hw2::InterpolateResponse>
{
  static const char* value()
  {
    return MD5Sum< ::foundations_hw2::Interpolate >::value();
  }
  static const char* value(const ::foundations_hw2::InterpolateResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::foundations_hw2::InterpolateResponse> should match 
// service_traits::DataType< ::foundations_hw2::Interpolate > 
template<>
struct DataType< ::foundations_hw2::InterpolateResponse>
{
  static const char* value()
  {
    return DataType< ::foundations_hw2::Interpolate >::value();
  }
  static const char* value(const ::foundations_hw2::InterpolateResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FOUNDATIONS_HW2_MESSAGE_INTERPOLATE_H