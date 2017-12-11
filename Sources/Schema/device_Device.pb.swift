// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: device/Device.proto
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

/// Enumerates major types of devices that might be encountered, including desktops, phones, tablets, TVs, and browsers.
public enum Device_DeviceType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The end-device type is not known.
  case unknownDeviceType // = 0

  /// The end-device is a desktop of some kind.
  case desktop // = 1

  /// The end-device is a phone.
  case phone // = 2

  /// The end-device is a tablet.
  case tablet // = 3

  /// The end-device is a TV of some kind.
  case tv // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .unknownDeviceType
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknownDeviceType
    case 1: self = .desktop
    case 2: self = .phone
    case 3: self = .tablet
    case 4: self = .tv
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unknownDeviceType: return 0
    case .desktop: return 1
    case .phone: return 2
    case .tablet: return 3
    case .tv: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies a structure that describes a known device.
public struct Device_Device: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Device"

  /// Universally unique identifier for this device.
  public var uuid: String {
    get {return _storage._uuid}
    set {_uniqueStorage()._uuid = newValue}
  }

  /// Type of this device.
  public var type: Device_DeviceType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Flags for this device.
  public var flags: Device_DeviceFlags {
    get {return _storage._flags ?? Device_DeviceFlags()}
    set {_uniqueStorage()._flags = newValue}
  }
  /// Returns true if `flags` has been explicitly set.
  public var hasFlags: Bool {return _storage._flags != nil}
  /// Clears the value of `flags`. Subsequent reads from it will return its default value.
  public mutating func clearFlags() {_storage._flags = nil}

  /// Credentials for this device.
  public var key: Device_DeviceCredentials {
    get {return _storage._key ?? Device_DeviceCredentials()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

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
        case 1: try decoder.decodeSingularStringField(value: &_storage._uuid)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._flags)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._key)
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
      if !_storage._uuid.isEmpty {
        try visitor.visitSingularStringField(value: _storage._uuid, fieldNumber: 1)
      }
      if _storage._type != .unknownDeviceType {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 2)
      }
      if let v = _storage._flags {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Stateful flags that may be set on a device.
public struct Device_DeviceFlags: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DeviceFlags"

  /// Flag to mark a device as ephemeral, i.e. attached to a disposable identity.
  public var ephemeral: Bool = false

  /// Flag to mark a device as managed by EMM systems.
  public var managed: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.ephemeral)
      case 2: try decoder.decodeSingularBoolField(value: &self.managed)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.ephemeral != false {
      try visitor.visitSingularBoolField(value: self.ephemeral, fieldNumber: 1)
    }
    if self.managed != false {
      try visitor.visitSingularBoolField(value: self.managed, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Credentials that assert a device's identity or authorization.
public struct Device_DeviceCredentials: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DeviceCredentials"

  /// Raw bytes for a device's public key.
  public var publicKey: Data = SwiftProtobuf.Internal.emptyData

  /// Raw bytes for the device's private key.
  public var privateKey: Data = SwiftProtobuf.Internal.emptyData

  /// SHA256 hash of this device's public key.
  public var sha256: String = String()

  /// A device's raw identity payload.
  public var identity: String = String()

  /// Repeated PEM authority payloads, asserted as trusted by the server.
  public var authorities: [Data] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.publicKey)
      case 2: try decoder.decodeSingularBytesField(value: &self.privateKey)
      case 3: try decoder.decodeSingularStringField(value: &self.sha256)
      case 4: try decoder.decodeSingularStringField(value: &self.identity)
      case 5: try decoder.decodeRepeatedBytesField(value: &self.authorities)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.publicKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.publicKey, fieldNumber: 1)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 2)
    }
    if !self.sha256.isEmpty {
      try visitor.visitSingularStringField(value: self.sha256, fieldNumber: 3)
    }
    if !self.identity.isEmpty {
      try visitor.visitSingularStringField(value: self.identity, fieldNumber: 4)
    }
    if !self.authorities.isEmpty {
      try visitor.visitRepeatedBytesField(value: self.authorities, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "device"

extension Device_DeviceType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_DEVICE_TYPE"),
    1: .same(proto: "DESKTOP"),
    2: .same(proto: "PHONE"),
    3: .same(proto: "TABLET"),
    4: .same(proto: "TV"),
  ]
}

extension Device_Device: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "uuid"),
    2: .same(proto: "type"),
    3: .same(proto: "flags"),
    4: .same(proto: "key"),
  ]

  fileprivate class _StorageClass {
    var _uuid: String = String()
    var _type: Device_DeviceType = .unknownDeviceType
    var _flags: Device_DeviceFlags? = nil
    var _key: Device_DeviceCredentials? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _uuid = source._uuid
      _type = source._type
      _flags = source._flags
      _key = source._key
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Device_Device) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._uuid != other_storage._uuid {return false}
        if _storage._type != other_storage._type {return false}
        if _storage._flags != other_storage._flags {return false}
        if _storage._key != other_storage._key {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Device_DeviceFlags: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "ephemeral"),
    2: .same(proto: "managed"),
  ]

  public func _protobuf_generated_isEqualTo(other: Device_DeviceFlags) -> Bool {
    if self.ephemeral != other.ephemeral {return false}
    if self.managed != other.managed {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Device_DeviceCredentials: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "public_key"),
    2: .standard(proto: "private_key"),
    3: .same(proto: "sha256"),
    4: .same(proto: "identity"),
    5: .same(proto: "authorities"),
  ]

  public func _protobuf_generated_isEqualTo(other: Device_DeviceCredentials) -> Bool {
    if self.publicKey != other.publicKey {return false}
    if self.privateKey != other.privateKey {return false}
    if self.sha256 != other.sha256 {return false}
    if self.identity != other.identity {return false}
    if self.authorities != other.authorities {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
