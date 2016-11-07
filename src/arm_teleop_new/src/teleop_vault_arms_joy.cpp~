#include <ros/ros.h>
#include <sensor_msgs/Joy.h>
#include <cmath>
#include "std_msgs/Bool.h"
#include "std_msgs/String.h"
#include "geometry_msgs/WrenchStamped.h"
#include "geometry_msgs/TwistStamped.h"

class TeleopUR5
{

// -----------------------------------------Variable Declarations -----------------------------------------

public: 
  TeleopUR5();

private: 

  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);

  ros::NodeHandle nh_;
  
  float linear_velocity, rotational_velocity, acceleration;	// Fixed speeds, acceleration...

  // Topic Interfacing
  ros::Subscriber joy_sub_;					// Joystick Subscriber
  ros::Publisher vel_pub_l_;					// Left Arm - Speed Publisher
  ros::Publisher vel_pub_r_;					// Right Arm - Speed Publisher

  // State Booleans
  bool teleop_enabled;						// Teleop Enabled
  bool translation; 						// Translation enabled (Rotation disabled)
  bool in_motion; 						// Robot is being commanded to move

  // Axis Names (but used like buttons)
  int left_deadman; 					// Logitech 'Left Trigger'
  int right_deadman; 					// Logitech 'Right Trigger'
  int long_axis; 					// Logitech 'U/D Touchpad'
  int lat_axis;						// Logitech 'R/L Touchpad'
  // Button Names
  int teleop_toggle; 					// Logitech 'Start'
  int translation_toggle; 				// Logitech 'X'
  int z_move_plus;					// Logitech 'Right Bumper'
  int z_move_minus; 					// Logitech 'Left Bumper'
  int preset_stow; 					// Logitech 'B'
  int preset_forward; 					// Logitech 'Y'

  // Joy Inputs
  float lin_in [3], rot_in [3], lin_out[3], rot_out[3]; // Holds button states (for ease of use)

  // Preset Arm Positions
  std_msgs::String preset_pose_l1, preset_pose_l2, preset_pose_r1, preset_pose_r2;

  std_msgs::String rspeeds; 					// Robot Rotational Speeds
  std_msgs::String lspeeds; 					// Robot Translational Speeds

  char cmd_[1024];
};

TeleopUR5::TeleopUR5():

// -----------------------------------------Variable Initialization -----------------------------------------

  linear_velocity(0.1),
  rotational_velocity(0.1),
  acceleration(0.1)
{
  //Params
  
  // State Booleans
  teleop_enabled = false;
  translation = true;
  in_motion = false;

  // Subscriber (Joystick)
  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("/joy_teleop/joy", 10, &TeleopUR5::joyCallback, this);
  // Publishers (Arm Drivers)
  vel_pub_l_ = nh_.advertise<std_msgs::String>("/chatter", 100);
  vel_pub_r_ = nh_.advertise<std_msgs::String>("/right_ur5_controller/right_ur5_URScript", 100);

  // Axis Names (but used like buttons)
  left_deadman = 2; 					// Logitech 'Left Trigger'
  right_deadman = 5; 					// Logitech 'Right Trigger'
  long_axis = 7; 					// Logitech 'U/D Touchpad'
  lat_axis = 6;						// Logitech 'R/L Touchpad'
  // Button Names
  teleop_toggle = 7; 					// Logitech 'Start'
  translation_toggle = 2; 				// Logitech 'X'
  z_move_plus = 5;					// Logitech 'Left Bumper'
  z_move_minus = 4; 					// Logitech 'Right Bumper'
  preset_stow = 1; 					// Logitech 'B'
  preset_forward = 3; 					// Logitech 'Y'

  // Preset Arm Positions
  preset_pose_l1.data = "movej([1.5700663309038547, -0.583366489468496, 1.3239782491742567, -2.245655451074253, -2.3654086332394697, 2.9917274285644684], 1.0, 0.1)\n"; 	// ready
  preset_pose_l2.data = "movej([1.74533, -3.0543, 2.793, -1.6581, -3.0543, 3.04159], 1.0, 0.1)\n"; 									// stow_back
  preset_pose_r1.data = "movej([-1.6723568037420726, -2.7089519656986383, -0.6380074601702258, -1.0541854410679474, 2.143715333202654, 1.6428859457432818], 1.0, 0.1)\n"; 	// stow_back (is this not actually the new ready pose?)
  //preset1_pose_r1.data = "movej([-1.57, -2.88, -0.663, -1.221, 1.92, -1.57], 1.0, 0.1)\n" 										// ready (old? deprecated?)
  preset_pose_r1.data = "movej([-1.74533, -0.0873, -2.793, -1.5708, 3.0543, 3.04159], 1.0, 0.1)\n"; 									// stow_back
}

void TeleopUR5::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{ 
  ROS_INFO("callback has been called! should try to publish... startstate: %d", joy->buttons[teleop_toggle]);
  vel_pub_l_.publish(preset_pose_l1);
  //ros::Duration(.5).sleep();
}


int main(int argc, char **argv)
{ 
  ros::init(argc, argv, "teleop_joy_ur5");  
  TeleopUR5 teleop_ur5;
  ros::spin();
}
