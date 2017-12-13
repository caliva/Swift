// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: pos/v1beta1/POSService.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Enumerated error states that may be served from the POS service.
public enum Services_Pos_V1beta1_POSError: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// An unknown internal error occurred.
  case unknown // = 0

  /// The collection value was missing or found to be invalid.
  case invalidCollection // = 1

  /// The partner code was missing or found to be invalid.
  case invalidPartner // = 2

  /// The location code was missing or found to be invalid.
  case invalidLocation // = 3

  /// The device key was missing or found to be invalid.
  case invalidDevice // = 4

  /// The specified partner could not be found.
  case partnerNotFound // = 5

  /// The specified partner could not be found.
  case locationNotFound // = 6

  /// The request payload was invalid in some manner.
  case invalidPayload // = 99
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknown
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .invalidCollection
    case 2: self = .invalidPartner
    case 3: self = .invalidLocation
    case 4: self = .invalidDevice
    case 5: self = .partnerNotFound
    case 6: self = .locationNotFound
    case 99: self = .invalidPayload
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknown: return 0
    case .invalidCollection: return 1
    case .invalidPartner: return 2
    case .invalidLocation: return 3
    case .invalidDevice: return 4
    case .partnerNotFound: return 5
    case .locationNotFound: return 6
    case .invalidPayload: return 99
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies an RPC operation to retrieve status information for the POS service.
public struct Services_Pos_V1beta1_Ping: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Ping"

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Specifies a request to ping the service.
  public struct Request: SwiftProtobuf.Message {
    public static let protoMessageName: String = Services_Pos_V1beta1_Ping.protoMessageName + ".Request"

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let _ = try decoder.nextFieldNumber() {
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  /// Specifies a response to a service ping.
  public struct Response: SwiftProtobuf.Message {
    public static let protoMessageName: String = Services_Pos_V1beta1_Ping.protoMessageName + ".Response"

    /// Current service status.
    public var status: Services_ServiceStatus = .unknown

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &self.status)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if self.status != .unknown {
        try visitor.visitSingularEnumField(value: self.status, fieldNumber: 1)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  /// Specifies an entire ping operation.
  public struct Operation: SwiftProtobuf.Message {
    public static let protoMessageName: String = Services_Pos_V1beta1_Ping.protoMessageName + ".Operation"

    /// Request for service status.
    public var request: Services_Pos_V1beta1_Ping.Request {
      get {return _storage._request ?? Services_Pos_V1beta1_Ping.Request()}
      set {_uniqueStorage()._request = newValue}
    }
    /// Returns true if `request` has been explicitly set.
    public var hasRequest: Bool {return _storage._request != nil}
    /// Clears the value of `request`. Subsequent reads from it will return its default value.
    public mutating func clearRequest() {_storage._request = nil}

    /// Response to a request for service status.
    public var response: Services_Pos_V1beta1_Ping.Response {
      get {return _storage._response ?? Services_Pos_V1beta1_Ping.Response()}
      set {_uniqueStorage()._response = newValue}
    }
    /// Returns true if `response` has been explicitly set.
    public var hasResponse: Bool {return _storage._response != nil}
    /// Clears the value of `response`. Subsequent reads from it will return its default value.
    public mutating func clearResponse() {_storage._response = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      _ = _uniqueStorage()
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        while let fieldNumber = try decoder.nextFieldNumber() {
          switch fieldNumber {
          case 1: try decoder.decodeSingularMessageField(value: &_storage._request)
          case 2: try decoder.decodeSingularMessageField(value: &_storage._response)
          default: break
          }
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        if let v = _storage._request {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if let v = _storage._response {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "services.pos.v1beta1"

extension Services_Pos_V1beta1_POSError: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "INVALID_COLLECTION"),
    2: .same(proto: "INVALID_PARTNER"),
    3: .same(proto: "INVALID_LOCATION"),
    4: .same(proto: "INVALID_DEVICE"),
    5: .same(proto: "PARTNER_NOT_FOUND"),
    6: .same(proto: "LOCATION_NOT_FOUND"),
    99: .same(proto: "INVALID_PAYLOAD"),
  ]
}

extension Services_Pos_V1beta1_Ping: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public func _protobuf_generated_isEqualTo(other: Services_Pos_V1beta1_Ping) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Services_Pos_V1beta1_Ping.Request: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public func _protobuf_generated_isEqualTo(other: Services_Pos_V1beta1_Ping.Request) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Services_Pos_V1beta1_Ping.Response: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  public func _protobuf_generated_isEqualTo(other: Services_Pos_V1beta1_Ping.Response) -> Bool {
    if self.status != other.status {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Services_Pos_V1beta1_Ping.Operation: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "request"),
    2: .same(proto: "response"),
  ]

  fileprivate class _StorageClass {
    var _request: Services_Pos_V1beta1_Ping.Request? = nil
    var _response: Services_Pos_V1beta1_Ping.Response? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _request = source._request
      _response = source._response
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Services_Pos_V1beta1_Ping.Operation) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._request != other_storage._request {return false}
        if _storage._response != other_storage._response {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}