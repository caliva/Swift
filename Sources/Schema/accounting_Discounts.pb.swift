// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: accounting/Discounts.proto
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

/// Enumerates types of discounts that may be applied.
public enum Accounting_Discounts_DiscountType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Some custom discount applied at the time of purchase.
  case custom // = 0

  /// Statutorily-mandated discount, for instance, for medical-only patients.
  case statutory // = 1

  /// Commercial discount, for instance, for vendors, brand ambassadors, and staff.
  case commercial // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .custom
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .custom
    case 1: self = .statutory
    case 2: self = .commercial
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .custom: return 0
    case .statutory: return 1
    case .commercial: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Enumerates operational calculation modes for discounts.
public enum Accounting_Discounts_DiscountBasis: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The discount is calculated per-item.
  case item // = 0

  /// The discount is calculated from the order subtotal, before tax.
  case orderSubtotal // = 1

  /// The discount is calculated from the order total, after tax.
  case orderTotal // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .item
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .item
    case 1: self = .orderSubtotal
    case 2: self = .orderTotal
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .item: return 0
    case .orderSubtotal: return 1
    case .orderTotal: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the concept of a discount, and how it is set to behave.
public struct Accounting_Discounts_DiscountSpec: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".DiscountSpec"

  /// Type of discount to apply.
  public var type: Accounting_Discounts_DiscountType = .custom

  /// Basis to form when calculating the discount.
  public var basis: Accounting_Discounts_DiscountBasis = .item

  /// Rate specified for the discount.
  public var rate: Accounting_Discounts_DiscountSpec.OneOf_Rate? = nil

  /// Percentage rate for the discount.
  public var percentage: Double {
    get {
      if case .percentage(let v)? = rate {return v}
      return 0
    }
    set {rate = .percentage(newValue)}
  }

  /// Flat rate for the discount.
  public var staticValue: Double {
    get {
      if case .staticValue(let v)? = rate {return v}
      return 0
    }
    set {rate = .staticValue(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Rate specified for the discount.
  public enum OneOf_Rate: Equatable {
    /// Percentage rate for the discount.
    case percentage(Double)
    /// Flat rate for the discount.
    case staticValue(Double)

    public static func ==(lhs: Accounting_Discounts_DiscountSpec.OneOf_Rate, rhs: Accounting_Discounts_DiscountSpec.OneOf_Rate) -> Bool {
      switch (lhs, rhs) {
      case (.percentage(let l), .percentage(let r)): return l == r
      case (.staticValue(let l), .staticValue(let r)): return l == r
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
      case 1: try decoder.decodeSingularEnumField(value: &self.type)
      case 2: try decoder.decodeSingularEnumField(value: &self.basis)
      case 3:
        if self.rate != nil {try decoder.handleConflictingOneOf()}
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {self.rate = .percentage(v)}
      case 4:
        if self.rate != nil {try decoder.handleConflictingOneOf()}
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {self.rate = .staticValue(v)}
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .custom {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if self.basis != .item {
      try visitor.visitSingularEnumField(value: self.basis, fieldNumber: 2)
    }
    switch self.rate {
    case .percentage(let v)?:
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 3)
    case .staticValue(let v)?:
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 4)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Specifies a discount to be applied during a purchase or order.
public struct Accounting_Discounts_Discount: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Discount"

  /// ID code for this discount entry.
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// Specification for how this discount behaves.
  public var spec: Accounting_Discounts_DiscountSpec {
    get {return _storage._spec ?? Accounting_Discounts_DiscountSpec()}
    set {_uniqueStorage()._spec = newValue}
  }
  /// Returns true if `spec` has been explicitly set.
  public var hasSpec: Bool {return _storage._spec != nil}
  /// Clears the value of `spec`. Subsequent reads from it will return its default value.
  public mutating func clearSpec() {_storage._spec = nil}

  /// Back-office name for this tax.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// User-visible name for this tax.
  public var label: String {
    get {return _storage._label}
    set {_uniqueStorage()._label = newValue}
  }

  /// Narrative description for this discount, to be displayed to back-office and end-users in some
  /// special circumstances.
  public var description_p: String {
    get {return _storage._description_p}
    set {_uniqueStorage()._description_p = newValue}
  }

  /// Last time this discount was modified.
  public var modifiedAt: Temporal_Instant {
    get {return _storage._modifiedAt ?? Temporal_Instant()}
    set {_uniqueStorage()._modifiedAt = newValue}
  }
  /// Returns true if `modifiedAt` has been explicitly set.
  public var hasModifiedAt: Bool {return _storage._modifiedAt != nil}
  /// Clears the value of `modifiedAt`. Subsequent reads from it will return its default value.
  public mutating func clearModifiedAt() {_storage._modifiedAt = nil}

  /// When this discount was created.
  public var createdAt: Temporal_Instant {
    get {return _storage._createdAt ?? Temporal_Instant()}
    set {_uniqueStorage()._createdAt = newValue}
  }
  /// Returns true if `createdAt` has been explicitly set.
  public var hasCreatedAt: Bool {return _storage._createdAt != nil}
  /// Clears the value of `createdAt`. Subsequent reads from it will return its default value.
  public mutating func clearCreatedAt() {_storage._createdAt = nil}

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
        case 1: try decoder.decodeSingularStringField(value: &_storage._id)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._spec)
        case 3: try decoder.decodeSingularStringField(value: &_storage._name)
        case 4: try decoder.decodeSingularStringField(value: &_storage._label)
        case 5: try decoder.decodeSingularStringField(value: &_storage._description_p)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._createdAt)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._modifiedAt)
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
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if let v = _storage._spec {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 3)
      }
      if !_storage._label.isEmpty {
        try visitor.visitSingularStringField(value: _storage._label, fieldNumber: 4)
      }
      if !_storage._description_p.isEmpty {
        try visitor.visitSingularStringField(value: _storage._description_p, fieldNumber: 5)
      }
      if let v = _storage._createdAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._modifiedAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "accounting.discounts"

extension Accounting_Discounts_DiscountType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CUSTOM"),
    1: .same(proto: "STATUTORY"),
    2: .same(proto: "COMMERCIAL"),
  ]
}

extension Accounting_Discounts_DiscountBasis: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ITEM"),
    1: .same(proto: "ORDER_SUBTOTAL"),
    2: .same(proto: "ORDER_TOTAL"),
  ]
}

extension Accounting_Discounts_DiscountSpec: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "basis"),
    3: .same(proto: "percentage"),
    4: .standard(proto: "static_value"),
  ]

  public func _protobuf_generated_isEqualTo(other: Accounting_Discounts_DiscountSpec) -> Bool {
    if self.type != other.type {return false}
    if self.basis != other.basis {return false}
    if self.rate != other.rate {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Accounting_Discounts_Discount: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "spec"),
    3: .same(proto: "name"),
    4: .same(proto: "label"),
    5: .same(proto: "description"),
    7: .standard(proto: "modified_at"),
    6: .standard(proto: "created_at"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _spec: Accounting_Discounts_DiscountSpec? = nil
    var _name: String = String()
    var _label: String = String()
    var _description_p: String = String()
    var _modifiedAt: Temporal_Instant? = nil
    var _createdAt: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _spec = source._spec
      _name = source._name
      _label = source._label
      _description_p = source._description_p
      _modifiedAt = source._modifiedAt
      _createdAt = source._createdAt
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Accounting_Discounts_Discount) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._id != other_storage._id {return false}
        if _storage._spec != other_storage._spec {return false}
        if _storage._name != other_storage._name {return false}
        if _storage._label != other_storage._label {return false}
        if _storage._description_p != other_storage._description_p {return false}
        if _storage._modifiedAt != other_storage._modifiedAt {return false}
        if _storage._createdAt != other_storage._createdAt {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
