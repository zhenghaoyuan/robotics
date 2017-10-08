// Auto-generated. Do not edit!

// (in-package foundations_hw2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointAngles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointAngles
    // Check that the constant length array field [angles] has the right length
    if (obj.angles.length !== 5) {
      throw new Error('Unable to serialize array field angles - length must be 5')
    }
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float64(obj.angles, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointAngles
    let len;
    let data = new JointAngles(null);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float64(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foundations_hw2/JointAngles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '266f4497ea1dcf85e7f9989383bff1ae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[5] angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointAngles(null);
    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = JointAngles;
