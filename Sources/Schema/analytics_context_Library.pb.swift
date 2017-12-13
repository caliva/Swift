// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/context/Library.proto
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

/// Specifies known API client libraries, produced internally by Bloombox.
public enum Analytics_Context_APIClient: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The underlying library specified no known API client library.
  case unidentified // = 0

  /// The underlying library is the official Bloombox JS Client.
  case javaScript // = 1

  /// The underlying library is the official Bloombox Swift Client.
  case swift // = 2

  /// The underlying library is the official Bloombox Java Client.
  case java // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unidentified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unidentified
    case 1: self = .javaScript
    case 2: self = .swift
    case 3: self = .java
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unidentified: return 0
    case .javaScript: return 1
    case .swift: return 2
    case .java: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies information about the library being used to transmit data.
public struct Analytics_Context_DeviceLibrary: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DeviceLibrary"

  /// Variant name of the library being used to transmit data.
  public var variant: String {
    get {return _storage._variant}
    set {_uniqueStorage()._variant = newValue}
  }

  /// Version specification for the library being used to transmit data.
  public var version: Structs_VersionSpec {
    get {return _storage._version ?? Structs_VersionSpec()}
    set {_uniqueStorage()._version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  public var hasVersion: Bool {return _storage._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  public mutating func clearVersion() {_storage._version = nil}

  /// Specifies, if applicable, the internally-produced client library in use.
  public var client: Analytics_Context_APIClient {
    get {return _storage._client}
    set {_uniqueStorage()._client = newValue}
  }

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
        case 1: try decoder.decodeSingularStringField(value: &_storage._variant)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._version)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._client)
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
      if !_storage._variant.isEmpty {
        try visitor.visitSingularStringField(value: _storage._variant, fieldNumber: 1)
      }
      if let v = _storage._version {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._client != .unidentified {
        try visitor.visitSingularEnumField(value: _storage._client, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "analytics.context"

extension Analytics_Context_APIClient: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNIDENTIFIED"),
    1: .same(proto: "JAVA_SCRIPT"),
    2: .same(proto: "SWIFT"),
    3: .same(proto: "JAVA"),
  ]
}

extension Analytics_Context_DeviceLibrary: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "variant"),
    2: .same(proto: "version"),
    3: .same(proto: "client"),
  ]

  fileprivate class _StorageClass {
    var _variant: String = String()
    var _version: Structs_VersionSpec? = nil
    var _client: Analytics_Context_APIClient = .unidentified

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _variant = source._variant
      _version = source._version
      _client = source._client
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Context_DeviceLibrary) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._variant != other_storage._variant {return false}
        if _storage._version != other_storage._version {return false}
        if _storage._client != other_storage._client {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}