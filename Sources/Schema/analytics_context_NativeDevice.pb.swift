// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/context/NativeDevice.proto
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

/// Specifies generic types of native devices that can be described.
public enum Analytics_Context_DeviceRole: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Indicates that the native device is acting in the role of a client. This is the default option.
  case client // = 0

  /// Indicates that the native device is acting in the role of a server.
  case server // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .client
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .client
    case 1: self = .server
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .client: return 0
    case .server: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the screen orientation at the time an event was captured.
public enum Analytics_Context_ScreenOrientation: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unspecified or unknown screen orientation.
  case unspecifiedOrientation // = 0

  /// Portrait (i.e. width is less than height) screen orientation mode.
  case portrait // = 1

  /// Landscape (i.e. height is less than width) screen orientation mode.
  case landscape // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecifiedOrientation
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecifiedOrientation
    case 1: self = .portrait
    case 2: self = .landscape
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecifiedOrientation: return 0
    case .portrait: return 1
    case .landscape: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Carries information about a device display, including resolution, pixel density, and viewport size, if applicable.
public struct Analytics_Context_PixelSize: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PixelSize"

  /// Specifies the width portion of a pixel size.
  public var width: UInt32 = 0

  /// Specifies the height portion of a pixel size.
  public var height: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.width)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.height)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.width != 0 {
      try visitor.visitSingularUInt32Field(value: self.width, fieldNumber: 1)
    }
    if self.height != 0 {
      try visitor.visitSingularUInt32Field(value: self.height, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Carries information about the screen being used on the device to display whatever is being instrumented.
public struct Analytics_Context_DeviceScreen: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DeviceScreen"

  /// Size of the screen.
  public var screen: Analytics_Context_PixelSize {
    get {return _storage._screen ?? Analytics_Context_PixelSize()}
    set {_uniqueStorage()._screen = newValue}
  }
  /// Returns true if `screen` has been explicitly set.
  public var hasScreen: Bool {return _storage._screen != nil}
  /// Clears the value of `screen`. Subsequent reads from it will return its default value.
  public mutating func clearScreen() {_storage._screen = nil}

  /// Size of the viewport.
  public var viewport: Analytics_Context_PixelSize {
    get {return _storage._viewport ?? Analytics_Context_PixelSize()}
    set {_uniqueStorage()._viewport = newValue}
  }
  /// Returns true if `viewport` has been explicitly set.
  public var hasViewport: Bool {return _storage._viewport != nil}
  /// Clears the value of `viewport`. Subsequent reads from it will return its default value.
  public mutating func clearViewport() {_storage._viewport = nil}

  /// Specifies the pixel density of the screen.
  public var density: UInt32 {
    get {return _storage._density}
    set {_uniqueStorage()._density = newValue}
  }

  /// Specifies the orientation of the screen at the time an event was captured.
  public var orientation: Analytics_Context_ScreenOrientation {
    get {return _storage._orientation}
    set {_uniqueStorage()._orientation = newValue}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._screen)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._viewport)
        case 3: try decoder.decodeSingularUInt32Field(value: &_storage._density)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._orientation)
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
      if let v = _storage._screen {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._viewport {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._density != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._density, fieldNumber: 3)
      }
      if _storage._orientation != .unspecifiedOrientation {
        try visitor.visitSingularEnumField(value: _storage._orientation, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a structure describing code running in some form of a native context.
public struct Analytics_Context_NativeDeviceContext: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".NativeDeviceContext"

  /// Specifies the type of native device.
  public var type: Device_DeviceType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Specifies the type of native device.
  public var role: Analytics_Context_DeviceRole {
    get {return _storage._role}
    set {_uniqueStorage()._role = newValue}
  }

  /// Specifies the OS of the native device.
  public var os: Analytics_Context_DeviceOS {
    get {return _storage._os ?? Analytics_Context_DeviceOS()}
    set {_uniqueStorage()._os = newValue}
  }
  /// Returns true if `os` has been explicitly set.
  public var hasOs: Bool {return _storage._os != nil}
  /// Clears the value of `os`. Subsequent reads from it will return its default value.
  public mutating func clearOs() {_storage._os = nil}

  /// Bluetooth Low Energy broadcast being emitted by this device.
  public var beacon: Proximity_BluetoothBeacon {
    get {return _storage._beacon ?? Proximity_BluetoothBeacon()}
    set {_uniqueStorage()._beacon = newValue}
  }
  /// Returns true if `beacon` has been explicitly set.
  public var hasBeacon: Bool {return _storage._beacon != nil}
  /// Clears the value of `beacon`. Subsequent reads from it will return its default value.
  public mutating func clearBeacon() {_storage._beacon = nil}

  /// BLE signals witnessed by this device.
  public var witnessed: [Proximity_BluetoothBeacon] {
    get {return _storage._witnessed}
    set {_uniqueStorage()._witnessed = newValue}
  }

  /// Information about the device screen.
  public var screen: Analytics_Context_DeviceScreen {
    get {return _storage._screen ?? Analytics_Context_DeviceScreen()}
    set {_uniqueStorage()._screen = newValue}
  }
  /// Returns true if `screen` has been explicitly set.
  public var hasScreen: Bool {return _storage._screen != nil}
  /// Clears the value of `screen`. Subsequent reads from it will return its default value.
  public mutating func clearScreen() {_storage._screen = nil}

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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 2: try decoder.decodeSingularEnumField(value: &_storage._role)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._os)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._screen)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._beacon)
        case 7: try decoder.decodeRepeatedMessageField(value: &_storage._witnessed)
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
      if _storage._type != .unknownDeviceType {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      if _storage._role != .client {
        try visitor.visitSingularEnumField(value: _storage._role, fieldNumber: 2)
      }
      if let v = _storage._os {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._screen {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._beacon {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._witnessed.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._witnessed, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "analytics.context"

extension Analytics_Context_DeviceRole: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CLIENT"),
    1: .same(proto: "SERVER"),
  ]
}

extension Analytics_Context_ScreenOrientation: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED_ORIENTATION"),
    1: .same(proto: "PORTRAIT"),
    2: .same(proto: "LANDSCAPE"),
  ]
}

extension Analytics_Context_PixelSize: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "width"),
    2: .same(proto: "height"),
  ]

  public func _protobuf_generated_isEqualTo(other: Analytics_Context_PixelSize) -> Bool {
    if self.width != other.width {return false}
    if self.height != other.height {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Analytics_Context_DeviceScreen: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "screen"),
    2: .same(proto: "viewport"),
    3: .same(proto: "density"),
    4: .same(proto: "orientation"),
  ]

  fileprivate class _StorageClass {
    var _screen: Analytics_Context_PixelSize? = nil
    var _viewport: Analytics_Context_PixelSize? = nil
    var _density: UInt32 = 0
    var _orientation: Analytics_Context_ScreenOrientation = .unspecifiedOrientation

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _screen = source._screen
      _viewport = source._viewport
      _density = source._density
      _orientation = source._orientation
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Context_DeviceScreen) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._screen != other_storage._screen {return false}
        if _storage._viewport != other_storage._viewport {return false}
        if _storage._density != other_storage._density {return false}
        if _storage._orientation != other_storage._orientation {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Analytics_Context_NativeDeviceContext: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "role"),
    3: .same(proto: "os"),
    6: .same(proto: "beacon"),
    7: .same(proto: "witnessed"),
    4: .same(proto: "screen"),
  ]

  fileprivate class _StorageClass {
    var _type: Device_DeviceType = .unknownDeviceType
    var _role: Analytics_Context_DeviceRole = .client
    var _os: Analytics_Context_DeviceOS? = nil
    var _beacon: Proximity_BluetoothBeacon? = nil
    var _witnessed: [Proximity_BluetoothBeacon] = []
    var _screen: Analytics_Context_DeviceScreen? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _role = source._role
      _os = source._os
      _beacon = source._beacon
      _witnessed = source._witnessed
      _screen = source._screen
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Context_NativeDeviceContext) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._type != other_storage._type {return false}
        if _storage._role != other_storage._role {return false}
        if _storage._os != other_storage._os {return false}
        if _storage._beacon != other_storage._beacon {return false}
        if _storage._witnessed != other_storage._witnessed {return false}
        if _storage._screen != other_storage._screen {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
