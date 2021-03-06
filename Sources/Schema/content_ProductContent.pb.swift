// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: content/ProductContent.proto
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

/// Specifies timestamps applied to a product, so that it may be tracked or sorted according to publish date, creation
/// date, or last modification date.
public struct Content_ProductTimestamps: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ProductTimestamps"

  /// When the subject product was created.
  public var created: Temporal_Instant {
    get {return _storage._created ?? Temporal_Instant()}
    set {_uniqueStorage()._created = newValue}
  }
  /// Returns true if `created` has been explicitly set.
  public var hasCreated: Bool {return _storage._created != nil}
  /// Clears the value of `created`. Subsequent reads from it will return its default value.
  public mutating func clearCreated() {_storage._created = nil}

  /// When the subject product was last modified.
  public var modified: Temporal_Instant {
    get {return _storage._modified ?? Temporal_Instant()}
    set {_uniqueStorage()._modified = newValue}
  }
  /// Returns true if `modified` has been explicitly set.
  public var hasModified: Bool {return _storage._modified != nil}
  /// Clears the value of `modified`. Subsequent reads from it will return its default value.
  public mutating func clearModified() {_storage._modified = nil}

  /// When the subject product was last or first published.
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._created)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._modified)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._published)
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
      if let v = _storage._created {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._modified {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._published {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a common model for product content, mostly user-visible, and shared by all concrete models. Most of the
/// information you see when a product is displayed or listed comes from this model.
public struct Content_ProductContent: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ProductContent"

  /// Main product name.
  public var name: Content_Name {
    get {return _storage._name ?? Content_Name()}
    set {_uniqueStorage()._name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  public var hasName: Bool {return _storage._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  public mutating func clearName() {_storage._name = nil}

  /// Brand information for this product.
  public var brand: Content_Brand {
    get {return _storage._brand ?? Content_Brand()}
    set {_uniqueStorage()._brand = newValue}
  }
  /// Returns true if `brand` has been explicitly set.
  public var hasBrand: Bool {return _storage._brand != nil}
  /// Clears the value of `brand`. Subsequent reads from it will return its default value.
  public mutating func clearBrand() {_storage._brand = nil}

  /// Description or narrative-style content about this product.
  public var summary: Content_Content {
    get {return _storage._summary ?? Content_Content()}
    set {_uniqueStorage()._summary = newValue}
  }
  /// Returns true if `summary` has been explicitly set.
  public var hasSummary: Bool {return _storage._summary != nil}
  /// Clears the value of `summary`. Subsequent reads from it will return its default value.
  public mutating func clearSummary() {_storage._summary = nil}

  /// Content about how this product is best used, or recommended to be used, either from the manufacturer or retailer.
  public var usage: Content_Content {
    get {return _storage._usage ?? Content_Content()}
    set {_uniqueStorage()._usage = newValue}
  }
  /// Returns true if `usage` has been explicitly set.
  public var hasUsage: Bool {return _storage._usage != nil}
  /// Clears the value of `usage`. Subsequent reads from it will return its default value.
  public mutating func clearUsage() {_storage._usage = nil}

  /// Dosage advice about this product, either from the manufacturer or retailer.
  public var dosage: Content_Content {
    get {return _storage._dosage ?? Content_Content()}
    set {_uniqueStorage()._dosage = newValue}
  }
  /// Returns true if `dosage` has been explicitly set.
  public var hasDosage: Bool {return _storage._dosage != nil}
  /// Clears the value of `dosage`. Subsequent reads from it will return its default value.
  public mutating func clearDosage() {_storage._dosage = nil}

  /// Product media, including images, videos, and so on.
  public var media: [Media_MediaItem] {
    get {return _storage._media}
    set {_uniqueStorage()._media = newValue}
  }

  /// Pricing specification for this product, regardless of pricing type (i.e. weighted or unit-style pricing).
  public var pricing: Structs_Pricing_ProductPricing {
    get {return _storage._pricing ?? Structs_Pricing_ProductPricing()}
    set {_uniqueStorage()._pricing = newValue}
  }
  /// Returns true if `pricing` has been explicitly set.
  public var hasPricing: Bool {return _storage._pricing != nil}
  /// Clears the value of `pricing`. Subsequent reads from it will return its default value.
  public mutating func clearPricing() {_storage._pricing = nil}

  /// Lab testing information concerning this product.
  public var testing: Structs_Labtesting_TestResults {
    get {return _storage._testing ?? Structs_Labtesting_TestResults()}
    set {_uniqueStorage()._testing = newValue}
  }
  /// Returns true if `testing` has been explicitly set.
  public var hasTesting: Bool {return _storage._testing != nil}
  /// Clears the value of `testing`. Subsequent reads from it will return its default value.
  public mutating func clearTesting() {_storage._testing = nil}

  /// Product flags attached to this content.
  public var flags: [Structs_ProductFlag] {
    get {return _storage._flags}
    set {_uniqueStorage()._flags = newValue}
  }

  /// Timestamps for this product.
  public var ts: Content_ProductTimestamps {
    get {return _storage._ts ?? Content_ProductTimestamps()}
    set {_uniqueStorage()._ts = newValue}
  }
  /// Returns true if `ts` has been explicitly set.
  public var hasTs: Bool {return _storage._ts != nil}
  /// Clears the value of `ts`. Subsequent reads from it will return its default value.
  public mutating func clearTs() {_storage._ts = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._name)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._brand)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._summary)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._usage)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._dosage)
        case 6: try decoder.decodeRepeatedMessageField(value: &_storage._media)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._pricing)
        case 8: try decoder.decodeSingularMessageField(value: &_storage._testing)
        case 9: try decoder.decodeRepeatedEnumField(value: &_storage._flags)
        case 10: try decoder.decodeSingularMessageField(value: &_storage._ts)
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
      if let v = _storage._name {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._brand {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._summary {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._usage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._dosage {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if !_storage._media.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._media, fieldNumber: 6)
      }
      if let v = _storage._pricing {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if let v = _storage._testing {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if !_storage._flags.isEmpty {
        try visitor.visitPackedEnumField(value: _storage._flags, fieldNumber: 9)
      }
      if let v = _storage._ts {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "content"

extension Content_ProductTimestamps: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "created"),
    2: .same(proto: "modified"),
    3: .same(proto: "published"),
  ]

  fileprivate class _StorageClass {
    var _created: Temporal_Instant? = nil
    var _modified: Temporal_Instant? = nil
    var _published: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _created = source._created
      _modified = source._modified
      _published = source._published
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Content_ProductTimestamps) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._created != other_storage._created {return false}
        if _storage._modified != other_storage._modified {return false}
        if _storage._published != other_storage._published {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Content_ProductContent: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "brand"),
    3: .same(proto: "summary"),
    4: .same(proto: "usage"),
    5: .same(proto: "dosage"),
    6: .same(proto: "media"),
    7: .same(proto: "pricing"),
    8: .same(proto: "testing"),
    9: .same(proto: "flags"),
    10: .same(proto: "ts"),
  ]

  fileprivate class _StorageClass {
    var _name: Content_Name? = nil
    var _brand: Content_Brand? = nil
    var _summary: Content_Content? = nil
    var _usage: Content_Content? = nil
    var _dosage: Content_Content? = nil
    var _media: [Media_MediaItem] = []
    var _pricing: Structs_Pricing_ProductPricing? = nil
    var _testing: Structs_Labtesting_TestResults? = nil
    var _flags: [Structs_ProductFlag] = []
    var _ts: Content_ProductTimestamps? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _brand = source._brand
      _summary = source._summary
      _usage = source._usage
      _dosage = source._dosage
      _media = source._media
      _pricing = source._pricing
      _testing = source._testing
      _flags = source._flags
      _ts = source._ts
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Content_ProductContent) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._name != other_storage._name {return false}
        if _storage._brand != other_storage._brand {return false}
        if _storage._summary != other_storage._summary {return false}
        if _storage._usage != other_storage._usage {return false}
        if _storage._dosage != other_storage._dosage {return false}
        if _storage._media != other_storage._media {return false}
        if _storage._pricing != other_storage._pricing {return false}
        if _storage._testing != other_storage._testing {return false}
        if _storage._flags != other_storage._flags {return false}
        if _storage._ts != other_storage._ts {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
