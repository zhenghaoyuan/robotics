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

class Ackermann {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steering_angle = null;
      this.vel = null;
    }
    else {
      if (initObj.hasOwnProperty('steering_angle')) {
        this.steering_angle = initObj.steering_angle
      }
      else {
        this.steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ackermann
    // Serialize message field [steering_angle]
    bufferOffset = _serializer.float64(obj.steering_angle, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float64(obj.vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ackermann
    let len;
    let data = new Ackermann(null);
    // Deserialize message field [steering_angle]
    data.steering_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foundations_hw2/Ackermann';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61c7e29a36f91d9c196a9722234d7472';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 steering_angle
    float64 vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ackermann(null);
    if (msg.steering_angle !== undefined) {
      resolved.steering_angle = msg.steering_angle;
    }
    else {
      resolved.steering_angle = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    return resolved;
    }
};

module.exports = Ackermann;
