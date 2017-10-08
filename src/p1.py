1
/rosout
/rosout_agg
the purpose of topic /rosout is a topic to convey the console log message to rosout node,it is similar to the cout, an standard output.

the purpose of topic /rosout_agg is to convey aggregate message to rosout 

2
three new added
/turtle1/cmd_vel
/turtle1/color_sensor
/turtle1/pose

using rostopic info, we could conclude
/turtle1/cmd_vel has the message about the twist in geometry.
/turtle1/color_sensor has the color info from turtlesim node
/turtle1/pose has the message of pose from turtlesim

3
using command rosmsg show we could know 
/turtle1/cmd_vel message type is geometry_msgs/Twist. in details it contains two vectors 
geometry_msgs/Vector3 linear
  float64 x
  float64 y
  float64 z
geometry_msgs/vector3 angular
  float64 x
  float64 y
  float63 z

that is, the information about the location and direction of the current keyboard value
/turtle1/pose message type is turtlesim/Pose. in detail it contains
float32 x
float32 y
float32 theta
float32 linear_velocity
float32 angular_velocity

that is, the information of the velocity of current turtle.

4 
/turtle1/cmd_val in current condition , no publisher, node /turtlesim subscribe it.
/turtle1/pose in current condition , /turtlesim is publisher , no subsriber.

5
by typing rosservice, we could know these services are running:
/clear
/kill
/reset
/rosout/get_loggers
/rosout/set_logger_level
/spawn
/turtle1/set_pen
/turtle1/teleport_absolute
/turtle1/teleport_relative
/turtlesim/get_loggers
/turtlesim/get_logger_level

By typing rosservice info we could use /turtle/teleport_absolute to move the turtle instantly

6
rosservice find geometry_msgs/Twist


