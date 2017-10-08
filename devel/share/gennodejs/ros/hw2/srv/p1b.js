// Auto-generated. Do not edit!

// (in-package hw2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let foundations_hw2 = _finder('foundations_hw2');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class p1bRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = new foundations_hw2.msg.JointAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type p1bRequest
    // Serialize message field [angle]
    bufferOffset = foundations_hw2.msg.JointAngles.serialize(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type p1bRequest
    let len;
    let data = new p1bRequest(null);
    // Deserialize message field [angle]
    data.angle = foundations_hw2.msg.JointAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hw2/p1bRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4a945124d95d3b8be9721d07efdaf3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    foundations_hw2/JointAngles angle
    
    ================================================================================
    MSG: foundations_hw2/JointAngles
    float64[5] angles
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new p1bRequest(null);
    if (msg.angle !== undefined) {
      resolved.angle = foundations_hw2.msg.JointAngles.Resolve(msg.angle)
    }
    else {
      resolved.angle = new foundations_hw2.msg.JointAngles()
    }

    return resolved;
    }
};

class p1bResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type p1bResponse
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type p1bResponse
    let len;
    let data = new p1bResponse(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hw2/p1bResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7c84ff13976aa04656e56e300124444';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point point
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new p1bResponse(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = {
  Request: p1bRequest,
  Response: p1bResponse,
  md5sum() { return '7d585a104a16a335204a108ac91aa0d5'; },
  datatype() { return 'hw2/p1b'; }
};
