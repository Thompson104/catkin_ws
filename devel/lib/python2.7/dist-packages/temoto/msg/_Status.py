# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from temoto/Status.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class Status(genpy.Message):
  _md5sum = "c8695ecd3f5ef0a2fa62cfb57020ea31"
  _type = "temoto/Status"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header

float64 scale_by
geometry_msgs/PoseStamped live_hand_pose
geometry_msgs/Pose[] cartesian_wayposes

bool in_natural_control_mode
bool orientation_free
bool position_unlimited
bool position_forward_only

bool in_navigation_mode

geometry_msgs/PoseStamped end_effector_pose


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['header','scale_by','live_hand_pose','cartesian_wayposes','in_natural_control_mode','orientation_free','position_unlimited','position_forward_only','in_navigation_mode','end_effector_pose']
  _slot_types = ['std_msgs/Header','float64','geometry_msgs/PoseStamped','geometry_msgs/Pose[]','bool','bool','bool','bool','bool','geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,scale_by,live_hand_pose,cartesian_wayposes,in_natural_control_mode,orientation_free,position_unlimited,position_forward_only,in_navigation_mode,end_effector_pose

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Status, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.scale_by is None:
        self.scale_by = 0.
      if self.live_hand_pose is None:
        self.live_hand_pose = geometry_msgs.msg.PoseStamped()
      if self.cartesian_wayposes is None:
        self.cartesian_wayposes = []
      if self.in_natural_control_mode is None:
        self.in_natural_control_mode = False
      if self.orientation_free is None:
        self.orientation_free = False
      if self.position_unlimited is None:
        self.position_unlimited = False
      if self.position_forward_only is None:
        self.position_forward_only = False
      if self.in_navigation_mode is None:
        self.in_navigation_mode = False
      if self.end_effector_pose is None:
        self.end_effector_pose = geometry_msgs.msg.PoseStamped()
    else:
      self.header = std_msgs.msg.Header()
      self.scale_by = 0.
      self.live_hand_pose = geometry_msgs.msg.PoseStamped()
      self.cartesian_wayposes = []
      self.in_natural_control_mode = False
      self.orientation_free = False
      self.position_unlimited = False
      self.position_forward_only = False
      self.in_navigation_mode = False
      self.end_effector_pose = geometry_msgs.msg.PoseStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_d3I.pack(_x.scale_by, _x.live_hand_pose.header.seq, _x.live_hand_pose.header.stamp.secs, _x.live_hand_pose.header.stamp.nsecs))
      _x = self.live_hand_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.live_hand_pose.pose.position.x, _x.live_hand_pose.pose.position.y, _x.live_hand_pose.pose.position.z, _x.live_hand_pose.pose.orientation.x, _x.live_hand_pose.pose.orientation.y, _x.live_hand_pose.pose.orientation.z, _x.live_hand_pose.pose.orientation.w))
      length = len(self.cartesian_wayposes)
      buff.write(_struct_I.pack(length))
      for val1 in self.cartesian_wayposes:
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_struct_5B3I.pack(_x.in_natural_control_mode, _x.orientation_free, _x.position_unlimited, _x.position_forward_only, _x.in_navigation_mode, _x.end_effector_pose.header.seq, _x.end_effector_pose.header.stamp.secs, _x.end_effector_pose.header.stamp.nsecs))
      _x = self.end_effector_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.end_effector_pose.pose.position.x, _x.end_effector_pose.pose.position.y, _x.end_effector_pose.pose.position.z, _x.end_effector_pose.pose.orientation.x, _x.end_effector_pose.pose.orientation.y, _x.end_effector_pose.pose.orientation.z, _x.end_effector_pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.live_hand_pose is None:
        self.live_hand_pose = geometry_msgs.msg.PoseStamped()
      if self.cartesian_wayposes is None:
        self.cartesian_wayposes = None
      if self.end_effector_pose is None:
        self.end_effector_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.scale_by, _x.live_hand_pose.header.seq, _x.live_hand_pose.header.stamp.secs, _x.live_hand_pose.header.stamp.nsecs,) = _struct_d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.live_hand_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.live_hand_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.live_hand_pose.pose.position.x, _x.live_hand_pose.pose.position.y, _x.live_hand_pose.pose.position.z, _x.live_hand_pose.pose.orientation.x, _x.live_hand_pose.pose.orientation.y, _x.live_hand_pose.pose.orientation.z, _x.live_hand_pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cartesian_wayposes = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        self.cartesian_wayposes.append(val1)
      _x = self
      start = end
      end += 17
      (_x.in_natural_control_mode, _x.orientation_free, _x.position_unlimited, _x.position_forward_only, _x.in_navigation_mode, _x.end_effector_pose.header.seq, _x.end_effector_pose.header.stamp.secs, _x.end_effector_pose.header.stamp.nsecs,) = _struct_5B3I.unpack(str[start:end])
      self.in_natural_control_mode = bool(self.in_natural_control_mode)
      self.orientation_free = bool(self.orientation_free)
      self.position_unlimited = bool(self.position_unlimited)
      self.position_forward_only = bool(self.position_forward_only)
      self.in_navigation_mode = bool(self.in_navigation_mode)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.end_effector_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.end_effector_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.end_effector_pose.pose.position.x, _x.end_effector_pose.pose.position.y, _x.end_effector_pose.pose.position.z, _x.end_effector_pose.pose.orientation.x, _x.end_effector_pose.pose.orientation.y, _x.end_effector_pose.pose.orientation.z, _x.end_effector_pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_d3I.pack(_x.scale_by, _x.live_hand_pose.header.seq, _x.live_hand_pose.header.stamp.secs, _x.live_hand_pose.header.stamp.nsecs))
      _x = self.live_hand_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.live_hand_pose.pose.position.x, _x.live_hand_pose.pose.position.y, _x.live_hand_pose.pose.position.z, _x.live_hand_pose.pose.orientation.x, _x.live_hand_pose.pose.orientation.y, _x.live_hand_pose.pose.orientation.z, _x.live_hand_pose.pose.orientation.w))
      length = len(self.cartesian_wayposes)
      buff.write(_struct_I.pack(length))
      for val1 in self.cartesian_wayposes:
        _v5 = val1.position
        _x = _v5
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
      _x = self
      buff.write(_struct_5B3I.pack(_x.in_natural_control_mode, _x.orientation_free, _x.position_unlimited, _x.position_forward_only, _x.in_navigation_mode, _x.end_effector_pose.header.seq, _x.end_effector_pose.header.stamp.secs, _x.end_effector_pose.header.stamp.nsecs))
      _x = self.end_effector_pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.end_effector_pose.pose.position.x, _x.end_effector_pose.pose.position.y, _x.end_effector_pose.pose.position.z, _x.end_effector_pose.pose.orientation.x, _x.end_effector_pose.pose.orientation.y, _x.end_effector_pose.pose.orientation.z, _x.end_effector_pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.live_hand_pose is None:
        self.live_hand_pose = geometry_msgs.msg.PoseStamped()
      if self.cartesian_wayposes is None:
        self.cartesian_wayposes = None
      if self.end_effector_pose is None:
        self.end_effector_pose = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 20
      (_x.scale_by, _x.live_hand_pose.header.seq, _x.live_hand_pose.header.stamp.secs, _x.live_hand_pose.header.stamp.nsecs,) = _struct_d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.live_hand_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.live_hand_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.live_hand_pose.pose.position.x, _x.live_hand_pose.pose.position.y, _x.live_hand_pose.pose.position.z, _x.live_hand_pose.pose.orientation.x, _x.live_hand_pose.pose.orientation.y, _x.live_hand_pose.pose.orientation.z, _x.live_hand_pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.cartesian_wayposes = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Pose()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        self.cartesian_wayposes.append(val1)
      _x = self
      start = end
      end += 17
      (_x.in_natural_control_mode, _x.orientation_free, _x.position_unlimited, _x.position_forward_only, _x.in_navigation_mode, _x.end_effector_pose.header.seq, _x.end_effector_pose.header.stamp.secs, _x.end_effector_pose.header.stamp.nsecs,) = _struct_5B3I.unpack(str[start:end])
      self.in_natural_control_mode = bool(self.in_natural_control_mode)
      self.orientation_free = bool(self.orientation_free)
      self.position_unlimited = bool(self.position_unlimited)
      self.position_forward_only = bool(self.position_forward_only)
      self.in_navigation_mode = bool(self.in_navigation_mode)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.end_effector_pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.end_effector_pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.end_effector_pose.pose.position.x, _x.end_effector_pose.pose.position.y, _x.end_effector_pose.pose.position.z, _x.end_effector_pose.pose.orientation.x, _x.end_effector_pose.pose.orientation.y, _x.end_effector_pose.pose.orientation.z, _x.end_effector_pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_5B3I = struct.Struct("<5B3I")
_struct_7d = struct.Struct("<7d")
_struct_3I = struct.Struct("<3I")
_struct_d3I = struct.Struct("<d3I")
_struct_4d = struct.Struct("<4d")
_struct_3d = struct.Struct("<3d")