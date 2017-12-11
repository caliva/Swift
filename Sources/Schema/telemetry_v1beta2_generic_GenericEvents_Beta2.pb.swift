// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: telemetry/v1beta2/generic/GenericEvents_Beta2.proto
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

/// Specifies an RPC operation to submit one or more generic events to an unenumerated collection.
public struct Services_Telemetry_V1beta2_Event: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Event"

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Specifies a request to submit a generic telemetry event record.
  public struct Request: SwiftProtobuf.Message {
    public static let protoMessageName: String = Services_Telemetry_V1beta2_Event.protoMessageName + ".Request"

    /// Context to submit for these events.
    public var context: Analytics_Context {
      get {return _storage._context ?? Analytics_Context()}
      set {_uniqueStorage()._context = newValue}
    }
    /// Returns true if `context` has been explicitly set.
    public var hasContext: Bool {return _storage._context != nil}
    /// Clears the value of `context`. Subsequent reads from it will return its default value.
    public mutating func clearContext() {_storage._context = nil}

    /// Generic event to submit.
    public var event: Analytics_Generic_Event {
      get {return _storage._event ?? Analytics_Generic_Event()}
      set {_uniqueStorage()._event = newValue}
    }
    /// Returns true if `event` has been explicitly set.
    public var hasEvent: Bool {return _storage._event != nil}
    /// Clears the value of `event`. Subsequent reads from it will return its default value.
    public mutating func clearEvent() {_storage._event = nil}

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
          case 1: try decoder.decodeSingularMessageField(value: &_storage._context)
          case 2: try decoder.decodeSingularMessageField(value: &_storage._event)
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
        if let v = _storage._context {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if let v = _storage._event {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  /// Specifies a request one or more generic telemetry event records.
  public struct Batch: SwiftProtobuf.Message {
    public static let protoMessageName: String = Services_Telemetry_V1beta2_Event.protoMessageName + ".Batch"

    /// Events to submit.
    public var event: [Analytics_Generic_Event] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 2: try decoder.decodeRepeatedMessageField(value: &self.event)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.event.isEmpty {
        try visitor.visitRepeatedMessageField(value: self.event, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  /// Wraps an event batch in a request.
  public struct BatchRequest: SwiftProtobuf.Message {
    public static let protoMessageName: String = Services_Telemetry_V1beta2_Event.protoMessageName + ".BatchRequest"

    /// Context to submit for these events.
    public var context: Analytics_Context {
      get {return _storage._context ?? Analytics_Context()}
      set {_uniqueStorage()._context = newValue}
    }
    /// Returns true if `context` has been explicitly set.
    public var hasContext: Bool {return _storage._context != nil}
    /// Clears the value of `context`. Subsequent reads from it will return its default value.
    public mutating func clearContext() {_storage._context = nil}

    /// Event batch.
    public var batch: [Services_Telemetry_V1beta2_Event.Batch] {
      get {return _storage._batch}
      set {_uniqueStorage()._batch = newValue}
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
          case 1: try decoder.decodeSingularMessageField(value: &_storage._context)
          case 2: try decoder.decodeRepeatedMessageField(value: &_storage._batch)
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
        if let v = _storage._context {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
        }
        if !_storage._batch.isEmpty {
          try visitor.visitRepeatedMessageField(value: _storage._batch, fieldNumber: 2)
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

/// Specifies an RPC operation to submit one or more error report payloads to an unenumerated collection.
public struct Services_Telemetry_V1beta2_Exception: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Exception"

  /// Context to submit for these events.
  public var context: Analytics_Context {
    get {return _storage._context ?? Analytics_Context()}
    set {_uniqueStorage()._context = newValue}
  }
  /// Returns true if `context` has been explicitly set.
  public var hasContext: Bool {return _storage._context != nil}
  /// Clears the value of `context`. Subsequent reads from it will return its default value.
  public mutating func clearContext() {_storage._context = nil}

  /// Error to submit.
  public var error: Analytics_Generic_Exception {
    get {return _storage._error ?? Analytics_Generic_Exception()}
    set {_uniqueStorage()._error = newValue}
  }
  /// Returns true if `error` has been explicitly set.
  public var hasError: Bool {return _storage._error != nil}
  /// Clears the value of `error`. Subsequent reads from it will return its default value.
  public mutating func clearError() {_storage._error = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._context)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._error)
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
      if let v = _storage._context {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._error {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "services.telemetry.v1beta2"

extension Services_Telemetry_V1beta2_Event: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public func _protobuf_generated_isEqualTo(other: Services_Telemetry_V1beta2_Event) -> Bool {
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Services_Telemetry_V1beta2_Event.Request: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "context"),
    2: .same(proto: "event"),
  ]

  fileprivate class _StorageClass {
    var _context: Analytics_Context? = nil
    var _event: Analytics_Generic_Event? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _context = source._context
      _event = source._event
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Services_Telemetry_V1beta2_Event.Request) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._context != other_storage._context {return false}
        if _storage._event != other_storage._event {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Services_Telemetry_V1beta2_Event.Batch: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "event"),
  ]

  public func _protobuf_generated_isEqualTo(other: Services_Telemetry_V1beta2_Event.Batch) -> Bool {
    if self.event != other.event {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Services_Telemetry_V1beta2_Event.BatchRequest: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "context"),
    2: .same(proto: "batch"),
  ]

  fileprivate class _StorageClass {
    var _context: Analytics_Context? = nil
    var _batch: [Services_Telemetry_V1beta2_Event.Batch] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _context = source._context
      _batch = source._batch
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Services_Telemetry_V1beta2_Event.BatchRequest) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._context != other_storage._context {return false}
        if _storage._batch != other_storage._batch {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Services_Telemetry_V1beta2_Exception: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "context"),
    2: .same(proto: "error"),
  ]

  fileprivate class _StorageClass {
    var _context: Analytics_Context? = nil
    var _error: Analytics_Generic_Exception? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _context = source._context
      _error = source._error
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Services_Telemetry_V1beta2_Exception) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._context != other_storage._context {return false}
        if _storage._error != other_storage._error {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
