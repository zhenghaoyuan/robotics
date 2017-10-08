// Auto-generated. Do not edit!

// (in-package foundations_hw2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EulerAngles = require('./EulerAngles.js');

//-----------------------------------------------------------

class EulerAnglesPair {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new EulerAngles();
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new EulerAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EulerAnglesPair
    // Serialize message field [a]
    bufferOffset = EulerAngles.serialize(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = EulerAngles.serialize(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EulerAnglesPair
    let len;
    let data = new EulerAnglesPair(null);
    // Deserialize message field [a]
    data.a = EulerAngles.deserialize(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = EulerAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'foundations_hw2/EulerAnglesPair';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a491fe66d9bbc50eb04b894ec3d243d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EulerAngles a
    EulerAngles b
    
    ================================================================================
    MSG: foundations_hw2/EulerAngles
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
    const resolved = new EulerAnglesPair(null);
    if (msg.a !== undefined) {
      resolved.a = EulerAngles.Resolve(msg.a)
    }
    else {
      resolved.a = new EulerAngles()
    }

    if (msg.b !== undefined) {
      resolved.b = EulerAngles.Resolve(msg.b)
    }
    else {
      resolved.b = new EulerAngles()
    }

    return resolved;
    }
};

module.exports = EulerAnglesPair;
