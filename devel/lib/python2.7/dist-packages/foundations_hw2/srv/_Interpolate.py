# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from foundations_hw2/InterpolateRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class InterpolateRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "foundations_hw2/InterpolateRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InterpolateRequest, self).__init__(*args, **kwds)

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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
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
      pass
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from foundations_hw2/InterpolateResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import foundations_hw2.msg

class InterpolateResponse(genpy.Message):
  _md5sum = "30b287eabe6b7c8311d43936111a65f8"
  _type = "foundations_hw2/InterpolateResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """EulerAngles initial
EulerAngles final
float64 seconds


================================================================================
MSG: foundations_hw2/EulerAngles
float64 phi
float64 theta
float64 psi
"""
  __slots__ = ['initial','final','seconds']
  _slot_types = ['foundations_hw2/EulerAngles','foundations_hw2/EulerAngles','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       initial,final,seconds

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InterpolateResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.initial is None:
        self.initial = foundations_hw2.msg.EulerAngles()
      if self.final is None:
        self.final = foundations_hw2.msg.EulerAngles()
      if self.seconds is None:
        self.seconds = 0.
    else:
      self.initial = foundations_hw2.msg.EulerAngles()
      self.final = foundations_hw2.msg.EulerAngles()
      self.seconds = 0.

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
      buff.write(_get_struct_7d().pack(_x.initial.phi, _x.initial.theta, _x.initial.psi, _x.final.phi, _x.final.theta, _x.final.psi, _x.seconds))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.initial is None:
        self.initial = foundations_hw2.msg.EulerAngles()
      if self.final is None:
        self.final = foundations_hw2.msg.EulerAngles()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.initial.phi, _x.initial.theta, _x.initial.psi, _x.final.phi, _x.final.theta, _x.final.psi, _x.seconds,) = _get_struct_7d().unpack(str[start:end])
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
      buff.write(_get_struct_7d().pack(_x.initial.phi, _x.initial.theta, _x.initial.psi, _x.final.phi, _x.final.theta, _x.final.psi, _x.seconds))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.initial is None:
        self.initial = foundations_hw2.msg.EulerAngles()
      if self.final is None:
        self.final = foundations_hw2.msg.EulerAngles()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.initial.phi, _x.initial.theta, _x.initial.psi, _x.final.phi, _x.final.theta, _x.final.psi, _x.seconds,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
class Interpolate(object):
  _type          = 'foundations_hw2/Interpolate'
  _md5sum = '30b287eabe6b7c8311d43936111a65f8'
  _request_class  = InterpolateRequest
  _response_class = InterpolateResponse
