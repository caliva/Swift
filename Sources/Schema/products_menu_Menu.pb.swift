// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: products/menu/Menu.proto
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

/// Enumerates statuses a menu may assume.
public enum Products_Menu_Status: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Indicates that a menu revision is not yet published.
  case unpublished // = 0

  /// Indicates that a menu revision has been published and is considered live.
  case live // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .unpublished
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unpublished
    case 1: self = .live
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unpublished: return 0
    case .live: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Enumerates flags that can be set on a menu.
public enum Products_Menu_Flag: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Indicates that this entire menu is considered a draft.
  case draft // = 0

  /// Indicates that the underlying menu data is currently private and should not be exposed publicly.
  case `private` // = 1

  /// Indicates that the underlying menu data is known to be out-of-date.
  case outOfDate // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .draft
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .draft
    case 1: self = .private
    case 2: self = .outOfDate
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .draft: return 0
    case .private: return 1
    case .outOfDate: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies metadata for a package of menu data.
public struct Products_Menu_Metadata: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Metadata"

  /// Partner location that owns this menu data.
  public var location: Partner_PartnerLocation {
    get {return _storage._location ?? Partner_PartnerLocation()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  public var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  public mutating func clearLocation() {_storage._location = nil}

  /// Version number, or publish timestamp, of this data.
  public var version: UInt64 {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  /// Status of this menu data.
  public var status: Products_Menu_Status {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  /// Flags attached to this menu data.
  public var flags: [Products_Menu_Flag] {
    get {return _storage._flags}
    set {_uniqueStorage()._flags = newValue}
  }

  /// When this menu data was published.
  public var published: Temporal_Instant {
    get {return _storage._published ?? Temporal_Instant()}
    set {_uniqueStorage()._published = newValue}
  }
  /// Returns true if `published` has been explicitly set.
  public var hasPublished: Bool {return _storage._published != nil}
  /// Clears the value of `published`. Subsequent reads from it will return its default value.
  public mutating func clearPublished() {_storage._published = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._location)
        case 2: try decoder.decodeSingularUInt64Field(value: &_storage._version)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._status)
        case 4: try decoder.decodeRepeatedEnumField(value: &_storage._flags)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._published)
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
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._version != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._version, fieldNumber: 2)
      }
      if _storage._status != .unpublished {
        try visitor.visitSingularEnumField(value: _storage._status, fieldNumber: 3)
      }
      if !_storage._flags.isEmpty {
        try visitor.visitPackedEnumField(value: _storage._flags, fieldNumber: 4)
      }
      if let v = _storage._published {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Menu product payload stanza. Specifies a single product as a member of a menu section.
public struct Products_Menu_MenuProduct: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".MenuProduct"

  /// Section that this data is attached to.
  public var key: Base_ProductKey {
    get {return _storage._key ?? Base_ProductKey()}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._key)
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
      if let v = _storage._key {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies an inner menu payload which contains menu data for a given menu section.
public struct Products_Menu_SectionData: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SectionData"

  /// Count of products included in this menu section data.
  public var count: Int32 {
    get {return _storage._count}
    set {_uniqueStorage()._count = newValue}
  }

  /// Section that this data is attached to.
  public var section: Products_Menu_Section_SectionSpec {
    get {return _storage._section ?? Products_Menu_Section_SectionSpec()}
    set {_uniqueStorage()._section = newValue}
  }
  /// Returns true if `section` has been explicitly set.
  public var hasSection: Bool {return _storage._section != nil}
  /// Clears the value of `section`. Subsequent reads from it will return its default value.
  public mutating func clearSection() {_storage._section = nil}

  /// Menu products attached to this section.
  public var product: [Products_Menu_MenuProduct] {
    get {return _storage._product}
    set {_uniqueStorage()._product = newValue}
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
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._count)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._section)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._product)
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
      if _storage._count != 0 {
        try visitor.visitSingularInt32Field(value: _storage._count, fieldNumber: 1)
      }
      if let v = _storage._section {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._product.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._product, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a menu split into section-level chunks.
public struct Products_Menu_SectionedMenu: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SectionedMenu"

  /// Count of all products included in this menu, all sections considered.
  public var count: Int32 = 0

  /// Specifies a payload of sectioned menu data.
  public var payload: [Products_Menu_SectionData] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.count)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.payload)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.count != 0 {
      try visitor.visitSingularInt32Field(value: self.count, fieldNumber: 1)
    }
    if !self.payload.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.payload, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies an inner menu payload which contains mapped data, where each map key is a section name, lowercased, and
/// each map value is itself a product, and each map is addressed at a typed property name.
public struct Products_Menu_StaticMenu: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".StaticMenu"

  /// Specifies APOTHECARY products attached to this menu.
  public var apothecary: Dictionary<String,Products_Apothecary> = [:]

  /// Specifies CARTRIDGE products attached to this menu.
  public var cartridges: Dictionary<String,Products_Cartridge> = [:]

  /// Specifies EDIBLE products attached to this menu.
  public var edibles: Dictionary<String,Products_Edible> = [:]

  /// Specifies EXTRACT products attached to this menu.
  public var extracts: Dictionary<String,Products_Extract> = [:]

  /// Specifies FLOWER products attached to this menu.
  public var flowers: Dictionary<String,Products_Flower> = [:]

  /// Specifies MERCHANDISE products attached to this menu.
  public var merchandise: Dictionary<String,Products_Merchandise> = [:]

  /// Specifies PLANT products attached to this menu.
  public var plants: Dictionary<String,Products_Plant> = [:]

  /// Specifies PREROLL products attached to this menu.
  public var prerolls: Dictionary<String,Products_Preroll> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Apothecary>.self, value: &self.apothecary)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Cartridge>.self, value: &self.cartridges)
      case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Edible>.self, value: &self.edibles)
      case 4: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Extract>.self, value: &self.extracts)
      case 5: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Flower>.self, value: &self.flowers)
      case 6: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Merchandise>.self, value: &self.merchandise)
      case 7: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Plant>.self, value: &self.plants)
      case 8: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Preroll>.self, value: &self.prerolls)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.apothecary.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Apothecary>.self, value: self.apothecary, fieldNumber: 1)
    }
    if !self.cartridges.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Cartridge>.self, value: self.cartridges, fieldNumber: 2)
    }
    if !self.edibles.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Edible>.self, value: self.edibles, fieldNumber: 3)
    }
    if !self.extracts.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Extract>.self, value: self.extracts, fieldNumber: 4)
    }
    if !self.flowers.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Flower>.self, value: self.flowers, fieldNumber: 5)
    }
    if !self.merchandise.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Merchandise>.self, value: self.merchandise, fieldNumber: 6)
    }
    if !self.plants.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Plant>.self, value: self.plants, fieldNumber: 7)
    }
    if !self.prerolls.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Products_Preroll>.self, value: self.prerolls, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Holds a full specification for a revision of menu data, segmented into sections, by the categories member products
/// are filed in. Categories are enumerated in `menu.Section`.
public struct Products_Menu_Menu: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Menu"

  /// Metadata for the menu.
  public var metadata: Products_Menu_Metadata {
    get {return _storage._metadata ?? Products_Menu_Metadata()}
    set {_uniqueStorage()._metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  public var hasMetadata: Bool {return _storage._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  public mutating func clearMetadata() {_storage._metadata = nil}

  /// Specifies menu content, either in repeated section data, or with a static map.
  public var content: OneOf_Content? {
    get {return _storage._content}
    set {_uniqueStorage()._content = newValue}
  }

  /// Data payloads attached to this menu.
  public var payload: Products_Menu_SectionedMenu {
    get {
      if case .payload(let v)? = _storage._content {return v}
      return Products_Menu_SectionedMenu()
    }
    set {_uniqueStorage()._content = .payload(newValue)}
  }

  /// Specifies a static menu, where each section is specified as a typed map, with keys mapped to products.
  public var menu: Products_Menu_StaticMenu {
    get {
      if case .menu(let v)? = _storage._content {return v}
      return Products_Menu_StaticMenu()
    }
    set {_uniqueStorage()._content = .menu(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Specifies menu content, either in repeated section data, or with a static map.
  public enum OneOf_Content: Equatable {
    /// Data payloads attached to this menu.
    case payload(Products_Menu_SectionedMenu)
    /// Specifies a static menu, where each section is specified as a typed map, with keys mapped to products.
    case menu(Products_Menu_StaticMenu)

    public static func ==(lhs: Products_Menu_Menu.OneOf_Content, rhs: Products_Menu_Menu.OneOf_Content) -> Bool {
      switch (lhs, rhs) {
      case (.payload(let l), .payload(let r)): return l == r
      case (.menu(let l), .menu(let r)): return l == r
      default: return false
      }
    }
  }

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._metadata)
        case 3:
          var v: Products_Menu_SectionedMenu?
          if let current = _storage._content {
            try decoder.handleConflictingOneOf()
            if case .payload(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._content = .payload(v)}
        case 4:
          var v: Products_Menu_StaticMenu?
          if let current = _storage._content {
            try decoder.handleConflictingOneOf()
            if case .menu(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._content = .menu(v)}
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
      if let v = _storage._metadata {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      switch _storage._content {
      case .payload(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case .menu(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "products.menu"

extension Products_Menu_Status: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNPUBLISHED"),
    1: .same(proto: "LIVE"),
  ]
}

extension Products_Menu_Flag: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DRAFT"),
    1: .same(proto: "PRIVATE"),
    2: .same(proto: "OUT_OF_DATE"),
  ]
}

extension Products_Menu_Metadata: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "location"),
    2: .same(proto: "version"),
    3: .same(proto: "status"),
    4: .same(proto: "flags"),
    5: .same(proto: "published"),
  ]

  fileprivate class _StorageClass {
    var _location: Partner_PartnerLocation? = nil
    var _version: UInt64 = 0
    var _status: Products_Menu_Status = .unpublished
    var _flags: [Products_Menu_Flag] = []
    var _published: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _location = source._location
      _version = source._version
      _status = source._status
      _flags = source._flags
      _published = source._published
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Products_Menu_Metadata) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._location != other_storage._location {return false}
        if _storage._version != other_storage._version {return false}
        if _storage._status != other_storage._status {return false}
        if _storage._flags != other_storage._flags {return false}
        if _storage._published != other_storage._published {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Products_Menu_MenuProduct: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
  ]

  fileprivate class _StorageClass {
    var _key: Base_ProductKey? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Products_Menu_MenuProduct) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Products_Menu_SectionData: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "count"),
    2: .same(proto: "section"),
    3: .same(proto: "product"),
  ]

  fileprivate class _StorageClass {
    var _count: Int32 = 0
    var _section: Products_Menu_Section_SectionSpec? = nil
    var _product: [Products_Menu_MenuProduct] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _count = source._count
      _section = source._section
      _product = source._product
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Products_Menu_SectionData) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._count != other_storage._count {return false}
        if _storage._section != other_storage._section {return false}
        if _storage._product != other_storage._product {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Products_Menu_SectionedMenu: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "count"),
    2: .same(proto: "payload"),
  ]

  public func _protobuf_generated_isEqualTo(other: Products_Menu_SectionedMenu) -> Bool {
    if self.count != other.count {return false}
    if self.payload != other.payload {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Products_Menu_StaticMenu: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "apothecary"),
    2: .same(proto: "cartridges"),
    3: .same(proto: "edibles"),
    4: .same(proto: "extracts"),
    5: .same(proto: "flowers"),
    6: .same(proto: "merchandise"),
    7: .same(proto: "plants"),
    8: .same(proto: "prerolls"),
  ]

  public func _protobuf_generated_isEqualTo(other: Products_Menu_StaticMenu) -> Bool {
    if self.apothecary != other.apothecary {return false}
    if self.cartridges != other.cartridges {return false}
    if self.edibles != other.edibles {return false}
    if self.extracts != other.extracts {return false}
    if self.flowers != other.flowers {return false}
    if self.merchandise != other.merchandise {return false}
    if self.plants != other.plants {return false}
    if self.prerolls != other.prerolls {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Products_Menu_Menu: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    3: .same(proto: "payload"),
    4: .same(proto: "menu"),
  ]

  fileprivate class _StorageClass {
    var _metadata: Products_Menu_Metadata? = nil
    var _content: Products_Menu_Menu.OneOf_Content?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _metadata = source._metadata
      _content = source._content
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Products_Menu_Menu) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._metadata != other_storage._metadata {return false}
        if _storage._content != other_storage._content {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
