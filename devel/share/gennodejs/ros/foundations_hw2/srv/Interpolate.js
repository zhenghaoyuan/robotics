// Auto-generated. Do not edit!

// (in-package foundations_hw2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let EulerAngles = require('../msg/EulerAngles.js');

//-----------------------------------------------------------

class InterpolateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterpolateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterpolateRequest
    let len;
    let data = new InterpolateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'foundations_hw2/InterpolateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InterpolateRequest(null);
    return resolved;
    }
};

class InterpolateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.initial = null;
      this.final = null;
      this.seconds = null;
    }
    else {
      if (initObj.hasOwnProperty('initial')) {
        this.initial = initObj.initial
      }
      else {
        this.initial = new EulerAngles();
      }
      if (initObj.hasOwnProperty('final')) {
        this.final = initObj.final
      }
      else {
        this.final = new EulerAngles();
      }
      if (initObj.hasOwnProperty('seconds')) {
        this.seconds = initObj.seconds
      }
      else {
        this.seconds = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterpolateResponse
    // Serialize message field [initial]
    bufferOffset = EulerAngles.serialize(obj.initial, buffer, bufferOffset);
    // Serialize message field [final]
    bufferOffset = EulerAngles.serialize(obj.final, buffer, bufferOffset);
    // Serialize message field [seconds]
    bufferOffset = _serializer.float64(obj.seconds, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterpolateResponse
    let len;
    let data = new InterpolateResponse(null);
    // Deserialize message field [initial]
    data.initial = EulerAngles.deserialize(buffer, bufferOffset);
    // Deserialize message field [final]
    data.final = EulerAngles.deserialize(buffer, bufferOffset);
    // Deserialize message field [seconds]
    data.seconds = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'foundations_hw2/InterpolateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30b287eabe6b7c8311d43936111a65f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    EulerAngles initial
    EulerAngles final
    float64 seconds
    
    
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
    const resolved = new InterpolateResponse(null);
    if (msg.initial !== undefined) {
      resolved.initial = EulerAngles.Resolve(msg.initial)
    }
    else {
      resolved.initial = new EulerAngles()
    }

    if (msg.final !== undefined) {
      resolved.final = EulerAngles.Resolve(msg.final)
    }
    else {
      resolved.final = new EulerAngles()
    }

    if (msg.seconds !== undefined) {
      resolved.seconds = msg.seconds;
    }
    else {
      resolved.seconds = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: InterpolateRequest,
  Response: InterpolateResponse,
  md5sum() { return '30b287eabe6b7c8311d43936111a65f8'; },
  datatype() { return 'foundations_hw2/Interpolate'; }
};
