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

class EulerAngles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.phi = null;
      this.theta = null;
      this.psi = null;
    }
    else {
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EulerAngles
    // Serialize message field [phi]
    bufferOffset = _serializer.float64(obj.phi, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = _serializer.float64(obj.psi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EulerAngles
    let len;
    let data = new EulerAngles(null);
    // Deserialize message field [phi]
    data.phi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foundations_hw2/EulerAngles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6de4259b4fd46914832c00602a20f670';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 phi
    float64 theta
    float64 psi
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EulerAngles(null);
    if (msg.phi !== undefined) {
      resolved.phi = msg.phi;
    }
    else {
      resolved.phi = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = 0.0
    }

    return resolved;
    }
};

module.exports = EulerAngles;
