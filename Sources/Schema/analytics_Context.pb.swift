// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: analytics/Context.proto
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

/// Indicates temporal positioning - or, the "when" - for a telemetry event, post-ingest.
public struct Analytics_EventPosition: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".EventPosition"

  /// Timestamp describing when this event was ingested by the backend telemetry pipeline.
  public var ingest: Temporal_Instant {
    get {return _storage._ingest ?? Temporal_Instant()}
    set {_uniqueStorage()._ingest = newValue}
  }
  /// Returns true if `ingest` has been explicitly set.
  public var hasIngest: Bool {return _storage._ingest != nil}
  /// Clears the value of `ingest`. Subsequent reads from it will return its default value.
  public mutating func clearIngest() {_storage._ingest = nil}

  /// Timestamp describing when this event occurred, as reported by the submitting device or endpoint.
  public var occurred: Temporal_Instant {
    get {return _storage._occurred ?? Temporal_Instant()}
    set {_uniqueStorage()._occurred = newValue}
  }
  /// Returns true if `occurred` has been explicitly set.
  public var hasOccurred: Bool {return _storage._occurred != nil}
  /// Clears the value of `occurred`. Subsequent reads from it will return its default value.
  public mutating func clearOccurred() {_storage._occurred = nil}

  /// Timestamps describing each instance of this event being processed by the telemetry pipeline.
  public var processed: UInt64 {
    get {return _storage._processed}
    set {_uniqueStorage()._processed = newValue}
  }

  /// Timestamps describing each instance of this event being enriched by the telemetry pipeline.
  public var enriched: UInt64 {
    get {return _storage._enriched}
    set {_uniqueStorage()._enriched = newValue}
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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._ingest)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._occurred)
        case 4: try decoder.decodeSingularUInt64Field(value: &_storage._processed)
        case 5: try decoder.decodeSingularUInt64Field(value: &_storage._enriched)
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
      if let v = _storage._ingest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._occurred {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if _storage._processed != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._processed, fieldNumber: 4)
      }
      if _storage._enriched != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._enriched, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies full, inflated data records for contextually-related objects, w.r.t. the current event.
public struct Analytics_EventActors: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".EventActors"

  /// User account that was logged in when the event was submitted.
  public var user: Identity_User {
    get {return _storage._user ?? Identity_User()}
    set {_uniqueStorage()._user = newValue}
  }
  /// Returns true if `user` has been explicitly set.
  public var hasUser: Bool {return _storage._user != nil}
  /// Clears the value of `user`. Subsequent reads from it will return its default value.
  public mutating func clearUser() {_storage._user = nil}

  /// Partner account under which the event was submitted.
  public var partner: Partner_Partner {
    get {return _storage._partner ?? Partner_Partner()}
    set {_uniqueStorage()._partner = newValue}
  }
  /// Returns true if `partner` has been explicitly set.
  public var hasPartner: Bool {return _storage._partner != nil}
  /// Clears the value of `partner`. Subsequent reads from it will return its default value.
  public mutating func clearPartner() {_storage._partner = nil}

  /// Location account under which this event was submitted.
  public var location: Partner_PartnerLocation {
    get {return _storage._location ?? Partner_PartnerLocation()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  public var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  public mutating func clearLocation() {_storage._location = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._user)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._partner)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._location)
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
      if let v = _storage._user {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._partner {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies contextual metadata to include with events or exceptions recorded via analytics/telemetry ingest.
public struct Analytics_Context: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Context"

  /// Collection information, specifies event type or category.
  public var collection: Analytics_Context_Collection {
    get {return _storage._collection ?? Analytics_Context_Collection()}
    set {_uniqueStorage()._collection = newValue}
  }
  /// Returns true if `collection` has been explicitly set.
  public var hasCollection: Bool {return _storage._collection != nil}
  /// Clears the value of `collection`. Subsequent reads from it will return its default value.
  public mutating func clearCollection() {_storage._collection = nil}

  /// Specifies the user associated with this event, if known.
  public var userKey: Identity_UserKey {
    get {return _storage._userKey ?? Identity_UserKey()}
    set {_uniqueStorage()._userKey = newValue}
  }
  /// Returns true if `userKey` has been explicitly set.
  public var hasUserKey: Bool {return _storage._userKey != nil}
  /// Clears the value of `userKey`. Subsequent reads from it will return its default value.
  public mutating func clearUserKey() {_storage._userKey = nil}

  /// Unique device fingerprint for this analytics context.
  public var fingerprint: String {
    get {return _storage._fingerprint}
    set {_uniqueStorage()._fingerprint = newValue}
  }

  /// Arbitrary group ID for this event. Gathers events into buckets of variable size, usually used to indicate a user
  /// or device session.
  public var group: String {
    get {return _storage._group}
    set {_uniqueStorage()._group = newValue}
  }

  /// Hostname of the server or client that transmitted this information, if it is known.
  public var hostname: String {
    get {return _storage._hostname}
    set {_uniqueStorage()._hostname = newValue}
  }

  /// IP address of the server or client that transmitted this information, if is is known.
  public var ipAddress: String {
    get {return _storage._ipAddress}
    set {_uniqueStorage()._ipAddress = newValue}
  }

  /// Partner and commercial scope of this event.
  public var scope: Analytics_Scope {
    get {return _storage._scope ?? Analytics_Scope()}
    set {_uniqueStorage()._scope = newValue}
  }
  /// Returns true if `scope` has been explicitly set.
  public var hasScope: Bool {return _storage._scope != nil}
  /// Clears the value of `scope`. Subsequent reads from it will return its default value.
  public mutating func clearScope() {_storage._scope = nil}

  /// Application version information.
  public var app: Analytics_Context_DeviceApplication {
    get {return _storage._app ?? Analytics_Context_DeviceApplication()}
    set {_uniqueStorage()._app = newValue}
  }
  /// Returns true if `app` has been explicitly set.
  public var hasApp: Bool {return _storage._app != nil}
  /// Clears the value of `app`. Subsequent reads from it will return its default value.
  public mutating func clearApp() {_storage._app = nil}

  /// Library version information.
  public var library: Analytics_Context_DeviceLibrary {
    get {return _storage._library ?? Analytics_Context_DeviceLibrary()}
    set {_uniqueStorage()._library = newValue}
  }
  /// Returns true if `library` has been explicitly set.
  public var hasLibrary: Bool {return _storage._library != nil}
  /// Clears the value of `library`. Subsequent reads from it will return its default value.
  public mutating func clearLibrary() {_storage._library = nil}

  /// Specifies information about a native device, when the event is being sent from a native context of some kind,
  /// such as a mobile phone application or embedded device running partner code.
  public var native: Analytics_Context_NativeDeviceContext {
    get {return _storage._native ?? Analytics_Context_NativeDeviceContext()}
    set {_uniqueStorage()._native = newValue}
  }
  /// Returns true if `native` has been explicitly set.
  public var hasNative: Bool {return _storage._native != nil}
  /// Clears the value of `native`. Subsequent reads from it will return its default value.
  public mutating func clearNative() {_storage._native = nil}

  /// Specifies information about a web browser, when the event is being sent from some kind of web browsing context.
  public var browser: Analytics_Context_BrowserDeviceContext {
    get {return _storage._browser ?? Analytics_Context_BrowserDeviceContext()}
    set {_uniqueStorage()._browser = newValue}
  }
  /// Returns true if `browser` has been explicitly set.
  public var hasBrowser: Bool {return _storage._browser != nil}
  /// Clears the value of `browser`. Subsequent reads from it will return its default value.
  public mutating func clearBrowser() {_storage._browser = nil}

  /// Origin location for this event, as determined by geolocation or explicit inclusion in the event payload.
  public var location: Geo_Location {
    get {return _storage._location ?? Geo_Location()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  public var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  public mutating func clearLocation() {_storage._location = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._collection)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._userKey)
        case 3: try decoder.decodeSingularStringField(value: &_storage._fingerprint)
        case 4: try decoder.decodeSingularStringField(value: &_storage._group)
        case 5: try decoder.decodeSingularStringField(value: &_storage._hostname)
        case 6: try decoder.decodeSingularStringField(value: &_storage._ipAddress)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._scope)
        case 8: try decoder.decodeSingularMessageField(value: &_storage._app)
        case 9: try decoder.decodeSingularMessageField(value: &_storage._library)
        case 10: try decoder.decodeSingularMessageField(value: &_storage._native)
        case 11: try decoder.decodeSingularMessageField(value: &_storage._browser)
        case 12: try decoder.decodeSingularMessageField(value: &_storage._location)
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
      if let v = _storage._collection {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._userKey {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._fingerprint.isEmpty {
        try visitor.visitSingularStringField(value: _storage._fingerprint, fieldNumber: 3)
      }
      if !_storage._group.isEmpty {
        try visitor.visitSingularStringField(value: _storage._group, fieldNumber: 4)
      }
      if !_storage._hostname.isEmpty {
        try visitor.visitSingularStringField(value: _storage._hostname, fieldNumber: 5)
      }
      if !_storage._ipAddress.isEmpty {
        try visitor.visitSingularStringField(value: _storage._ipAddress, fieldNumber: 6)
      }
      if let v = _storage._scope {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if let v = _storage._app {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if let v = _storage._library {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if let v = _storage._native {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
      if let v = _storage._browser {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "analytics"

extension Analytics_EventPosition: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "ingest"),
    3: .same(proto: "occurred"),
    4: .same(proto: "processed"),
    5: .same(proto: "enriched"),
  ]

  fileprivate class _StorageClass {
    var _ingest: Temporal_Instant? = nil
    var _occurred: Temporal_Instant? = nil
    var _processed: UInt64 = 0
    var _enriched: UInt64 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _ingest = source._ingest
      _occurred = source._occurred
      _processed = source._processed
      _enriched = source._enriched
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_EventPosition) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._ingest != other_storage._ingest {return false}
        if _storage._occurred != other_storage._occurred {return false}
        if _storage._processed != other_storage._processed {return false}
        if _storage._enriched != other_storage._enriched {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Analytics_EventActors: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "user"),
    2: .same(proto: "partner"),
    3: .same(proto: "location"),
  ]

  fileprivate class _StorageClass {
    var _user: Identity_User? = nil
    var _partner: Partner_Partner? = nil
    var _location: Partner_PartnerLocation? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _user = source._user
      _partner = source._partner
      _location = source._location
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_EventActors) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._user != other_storage._user {return false}
        if _storage._partner != other_storage._partner {return false}
        if _storage._location != other_storage._location {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Analytics_Context: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "collection"),
    2: .standard(proto: "user_key"),
    3: .same(proto: "fingerprint"),
    4: .same(proto: "group"),
    5: .same(proto: "hostname"),
    6: .standard(proto: "ip_address"),
    7: .same(proto: "scope"),
    8: .same(proto: "app"),
    9: .same(proto: "library"),
    10: .same(proto: "native"),
    11: .same(proto: "browser"),
    12: .same(proto: "location"),
  ]

  fileprivate class _StorageClass {
    var _collection: Analytics_Context_Collection? = nil
    var _userKey: Identity_UserKey? = nil
    var _fingerprint: String = String()
    var _group: String = String()
    var _hostname: String = String()
    var _ipAddress: String = String()
    var _scope: Analytics_Scope? = nil
    var _app: Analytics_Context_DeviceApplication? = nil
    var _library: Analytics_Context_DeviceLibrary? = nil
    var _native: Analytics_Context_NativeDeviceContext? = nil
    var _browser: Analytics_Context_BrowserDeviceContext? = nil
    var _location: Geo_Location? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _collection = source._collection
      _userKey = source._userKey
      _fingerprint = source._fingerprint
      _group = source._group
      _hostname = source._hostname
      _ipAddress = source._ipAddress
      _scope = source._scope
      _app = source._app
      _library = source._library
      _native = source._native
      _browser = source._browser
      _location = source._location
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Analytics_Context) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._collection != other_storage._collection {return false}
        if _storage._userKey != other_storage._userKey {return false}
        if _storage._fingerprint != other_storage._fingerprint {return false}
        if _storage._group != other_storage._group {return false}
        if _storage._hostname != other_storage._hostname {return false}
        if _storage._ipAddress != other_storage._ipAddress {return false}
        if _storage._scope != other_storage._scope {return false}
        if _storage._app != other_storage._app {return false}
        if _storage._library != other_storage._library {return false}
        if _storage._native != other_storage._native {return false}
        if _storage._browser != other_storage._browser {return false}
        if _storage._location != other_storage._location {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
