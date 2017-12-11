// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: commerce/Item.proto
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

/// Specifies weight and price of  ordered product
public enum Commerce_ProductVariant: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Variance by product weight.
  case weight // = 0

  /// Variance by product color.
  case color // = 1

  /// Variance by product size.
  case size // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .weight
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .weight
    case 1: self = .color
    case 2: self = .size
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .weight: return 0
    case .color: return 1
    case .size: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Enumeration for potential weight of concentrates and flowers
public enum Commerce_ProductWeight: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The product has no weight value.
  case noWeight // = 0

  /// Half of one gram, usually for concentrates.
  case halfgram // = 1

  /// One gram.
  case gram // = 2

  /// An eighth of an ounce.
  case eighth // = 3

  /// A quarter of an ounce.
  case quarter // = 4

  /// A half ounce.
  case half // = 5

  /// A full ounce.
  case oz // = 6
  case UNRECOGNIZED(Int)

  public init() {
    self = .noWeight
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .noWeight
    case 1: self = .halfgram
    case 2: self = .gram
    case 3: self = .eighth
    case 4: self = .quarter
    case 5: self = .half
    case 6: self = .oz
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .noWeight: return 0
    case .halfgram: return 1
    case .gram: return 2
    case .eighth: return 3
    case .quarter: return 4
    case .half: return 5
    case .oz: return 6
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies if it is a weighted product or a unit priced product and attaches that to item.
public struct Commerce_VariantSpec: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".VariantSpec"

  /// Specifies the variance type for this spec.
  public var variant: Commerce_ProductVariant = .weight

  public var spec: Commerce_VariantSpec.OneOf_Spec? = nil

  /// Specifies a product weight, when varying by weight.
  public var weight: Commerce_ProductWeight {
    get {
      if case .weight(let v)? = spec {return v}
      return .noWeight
    }
    set {spec = .weight(newValue)}
  }

  /// Specifies a size option for the product.
  public var size: String {
    get {
      if case .size(let v)? = spec {return v}
      return String()
    }
    set {spec = .size(newValue)}
  }

  /// Specifies a color option for the product.
  public var color: String {
    get {
      if case .color(let v)? = spec {return v}
      return String()
    }
    set {spec = .color(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Spec: Equatable {
    /// Specifies a product weight, when varying by weight.
    case weight(Commerce_ProductWeight)
    /// Specifies a size option for the product.
    case size(String)
    /// Specifies a color option for the product.
    case color(String)

    public static func ==(lhs: Commerce_VariantSpec.OneOf_Spec, rhs: Commerce_VariantSpec.OneOf_Spec) -> Bool {
      switch (lhs, rhs) {
      case (.weight(let l), .weight(let r)): return l == r
      case (.size(let l), .size(let r)): return l == r
      case (.color(let l), .color(let r)): return l == r
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
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.variant)
      case 2:
        if self.spec != nil {try decoder.handleConflictingOneOf()}
        var v: Commerce_ProductWeight?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {self.spec = .weight(v)}
      case 3:
        if self.spec != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.spec = .size(v)}
      case 4:
        if self.spec != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.spec = .color(v)}
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.variant != .weight {
      try visitor.visitSingularEnumField(value: self.variant, fieldNumber: 1)
    }
    switch self.spec {
    case .weight(let v)?:
      try visitor.visitSingularEnumField(value: v, fieldNumber: 2)
    case .size(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    case .color(let v)?:
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies the Item via the product key as well as weight, and count of product ordered
public struct Commerce_Item: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Item"

  /// Key for the item, which is the type and ID, combined.
  public var key: Base_ProductKey {
    get {return _storage._key ?? Base_ProductKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  /// Variance specifications for this item.
  public var variant: [Commerce_VariantSpec] {
    get {return _storage._variant}
    set {_uniqueStorage()._variant = newValue}
  }

  /// Count of this item requested.
  public var count: UInt32 {
    get {return _storage._count}
    set {_uniqueStorage()._count = newValue}
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._key)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._variant)
        case 3: try decoder.decodeSingularUInt32Field(value: &_storage._count)
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
      if !_storage._variant.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._variant, fieldNumber: 2)
      }
      if _storage._count != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._count, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "commerce"

extension Commerce_ProductVariant: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "WEIGHT"),
    1: .same(proto: "COLOR"),
    2: .same(proto: "SIZE"),
  ]
}

extension Commerce_ProductWeight: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NO_WEIGHT"),
    1: .same(proto: "HALFGRAM"),
    2: .same(proto: "GRAM"),
    3: .same(proto: "EIGHTH"),
    4: .same(proto: "QUARTER"),
    5: .same(proto: "HALF"),
    6: .same(proto: "OZ"),
  ]
}

extension Commerce_VariantSpec: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "variant"),
    2: .same(proto: "weight"),
    3: .same(proto: "size"),
    4: .same(proto: "color"),
  ]

  public func _protobuf_generated_isEqualTo(other: Commerce_VariantSpec) -> Bool {
    if self.variant != other.variant {return false}
    if self.spec != other.spec {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Commerce_Item: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "variant"),
    3: .same(proto: "count"),
  ]

  fileprivate class _StorageClass {
    var _key: Base_ProductKey? = nil
    var _variant: [Commerce_VariantSpec] = []
    var _count: UInt32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _variant = source._variant
      _count = source._count
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Commerce_Item) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        if _storage._variant != other_storage._variant {return false}
        if _storage._count != other_storage._count {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
