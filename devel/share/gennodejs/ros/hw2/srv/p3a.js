// Auto-generated. Do not edit!

// (in-package hw2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class p3aRequest {
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
    // Serializes a message object of type p3aRequest
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type p3aRequest
    let len;
    let data = new p3aRequest(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hw2/p3aRequest';
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
    const resolved = new p3aRequest(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class p3aResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint1 = null;
      this.joint2 = null;
      this.joint3 = null;
      this.joint4 = null;
    }
    else {
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = 0.0;
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = 0.0;
      }
      if (initObj.hasOwnProperty('joint3')) {
        this.joint3 = initObj.joint3
      }
      else {
        this.joint3 = 0.0;
      }
      if (initObj.hasOwnProperty('joint4')) {
        this.joint4 = initObj.joint4
      }
      else {
        this.joint4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type p3aResponse
    // Serialize message field [joint1]
    bufferOffset = _serializer.float64(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = _serializer.float64(obj.joint2, buffer, bufferOffset);
    // Serialize message field [joint3]
    bufferOffset = _serializer.float64(obj.joint3, buffer, bufferOffset);
    // Serialize message field [joint4]
    bufferOffset = _serializer.float64(obj.joint4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type p3aResponse
    let len;
    let data = new p3aResponse(null);
    // Deserialize message field [joint1]
    data.joint1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint3]
    data.joint3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joint4]
    data.joint4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hw2/p3aResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb6e7c37be4d0e82de5529136096fb87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 joint1
    float64 joint2
    float64 joint3
    float64 joint4
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new p3aResponse(null);
    if (msg.joint1 !== undefined) {
      resolved.joint1 = msg.joint1;
    }
    else {
      resolved.joint1 = 0.0
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = msg.joint2;
    }
    else {
      resolved.joint2 = 0.0
    }

    if (msg.joint3 !== undefined) {
      resolved.joint3 = msg.joint3;
    }
    else {
      resolved.joint3 = 0.0
    }

    if (msg.joint4 !== undefined) {
      resolved.joint4 = msg.joint4;
    }
    else {
      resolved.joint4 = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: p3aRequest,
  Response: p3aResponse,
  md5sum() { return '1de241a877ec50f4a1867b435486ffb2'; },
  datatype() { return 'hw2/p3a'; }
};
