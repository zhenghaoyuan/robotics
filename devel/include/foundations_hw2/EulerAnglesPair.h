// Generated by gencpp from file foundations_hw2/EulerAnglesPair.msg
// DO NOT EDIT!


#ifndef FOUNDATIONS_HW2_MESSAGE_EULERANGLESPAIR_H
#define FOUNDATIONS_HW2_MESSAGE_EULERANGLESPAIR_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <foundations_hw2/EulerAngles.h>
#include <foundations_hw2/EulerAngles.h>

namespace foundations_hw2
{
template <class ContainerAllocator>
struct EulerAnglesPair_
{
  typedef EulerAnglesPair_<ContainerAllocator> Type;

  EulerAnglesPair_()
    : a()
    , b()  {
    }
  EulerAnglesPair_(const ContainerAllocator& _alloc)
    : a(_alloc)
    , b(_alloc)  {
  (void)_alloc;
    }



   typedef  ::foundations_hw2::EulerAngles_<ContainerAllocator>  _a_type;
  _a_type a;

   typedef  ::foundations_hw2::EulerAngles_<ContainerAllocator>  _b_type;
  _b_type b;




  typedef boost::shared_ptr< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> const> ConstPtr;

}; // struct EulerAnglesPair_

typedef ::foundations_hw2::EulerAnglesPair_<std::allocator<void> > EulerAnglesPair;

typedef boost::shared_ptr< ::foundations_hw2::EulerAnglesPair > EulerAnglesPairPtr;
typedef boost::shared_ptr< ::foundations_hw2::EulerAnglesPair const> EulerAnglesPairConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace foundations_hw2

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/lunar/share/std_msgs/cmake/../msg'], 'foundations_hw2': ['/home/cs4750/catkin/src/foundations_hw2/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2a491fe66d9bbc50eb04b894ec3d243d";
  }

  static const char* value(const ::foundations_hw2::EulerAnglesPair_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2a491fe66d9bbc50ULL;
  static const uint64_t static_value2 = 0xeb04b894ec3d243dULL;
};

template<class ContainerAllocator>
struct DataType< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
{
  static const char* value()
  {
    return "foundations_hw2/EulerAnglesPair";
  }

  static const char* value(const ::foundations_hw2::EulerAnglesPair_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
{
  static const char* value()
  {
    return "EulerAngles a\n\
EulerAngles b\n\
\n\
================================================================================\n\
MSG: foundations_hw2/EulerAngles\n\
float64 phi\n\
float64 theta\n\
float64 psi\n\
";
  }

  static const char* value(const ::foundations_hw2::EulerAnglesPair_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EulerAnglesPair_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::foundations_hw2::EulerAnglesPair_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::foundations_hw2::EulerAnglesPair_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    s << std::endl;
    Printer< ::foundations_hw2::EulerAngles_<ContainerAllocator> >::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    s << std::endl;
    Printer< ::foundations_hw2::EulerAngles_<ContainerAllocator> >::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FOUNDATIONS_HW2_MESSAGE_EULERANGLESPAIR_H
