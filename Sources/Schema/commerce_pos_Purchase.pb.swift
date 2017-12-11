// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: commerce/pos/Purchase.proto
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

/// Enumerates statuses that a purchase transaction may take.
public enum Commerce_Pos_PurchaseStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The purchase has been allocated and has not yet begun filling with data.
  case dormant // = 0

  /// The purchase is actively being collaborated on.
  case `open` // = 1

  /// The purchase was cancelled.
  case voided // = 2

  /// The purchase was completed and is now closed.
  case closed // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .dormant
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .dormant
    case 1: self = .open
    case 2: self = .voided
    case 3: self = .closed
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .dormant: return 0
    case .open: return 1
    case .voided: return 2
    case .closed: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies an event that takes place against a Purchase.
public struct Commerce_Pos_PurchaseEvent: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".PurchaseEvent"

  /// Status the order moved to.
  public var status: Commerce_Pos_PurchaseStatus {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  /// Instant the order was moved to this status.
  public var instant: Temporal_Instant {
    get {return _storage._instant ?? Temporal_Instant()}
    set {_uniqueStorage()._instant = newValue}
  }
  /// Returns true if `instant` has been explicitly set.
  public var hasInstant: Bool {return _storage._instant != nil}
  /// Clears the value of `instant`. Subsequent reads from it will return its default value.
  public mutating func clearInstant() {_storage._instant = nil}

  /// Message or reason given for this status change, if any.
  public var message: String {
    get {return _storage._message}
    set {_uniqueStorage()._message = newValue}
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._status)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._instant)
        case 3: try decoder.decodeSingularStringField(value: &_storage._message)
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
      if _storage._status != .dormant {
        try visitor.visitSingularEnumField(value: _storage._status, fieldNumber: 1)
      }
      if let v = _storage._instant {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._message.isEmpty {
        try visitor.visitSingularStringField(value: _storage._message, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Receipt object describing each of a purchase's component taxes and charges.
public struct Commerce_Pos_Receipt: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Receipt"

  /// Calculated subtotal of all items, and their ordered quantities, summed of price.
  public var subtotal: Double = 0

  /// Tax entries applied to this receipt.
  public var tax: [Accounting_Taxes_Tax] = []

  /// Discount entries applied to this receipt.
  public var discount: [Accounting_Discounts_Discount] = []

  /// Calculated full total.
  public var total: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.subtotal)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.tax)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.discount)
      case 4: try decoder.decodeSingularDoubleField(value: &self.total)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.subtotal != 0 {
      try visitor.visitSingularDoubleField(value: self.subtotal, fieldNumber: 1)
    }
    if !self.tax.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tax, fieldNumber: 2)
    }
    if !self.discount.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.discount, fieldNumber: 3)
    }
    if self.total != 0 {
      try visitor.visitSingularDoubleField(value: self.total, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Represents a commercial purchase, made at a point-of-sale station at a brick-and-mortar
/// retail dispensary.
public struct Commerce_Pos_Purchase: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Purchase"

  /// ID assigned to the purchase by the server.
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// Partner ID for the purchase.
  public var partnerCode: String {
    get {return _storage._partnerCode}
    set {_uniqueStorage()._partnerCode = newValue}
  }

  /// Location ID for the purchase.
  public var locationCode: String {
    get {return _storage._locationCode}
    set {_uniqueStorage()._locationCode = newValue}
  }

  /// Current status of this purchase.
  public var status: Commerce_Pos_PurchaseStatus {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  /// Customer that submitted this purchase.
  public var customer: Commerce_Customer {
    get {return _storage._customer ?? Commerce_Customer()}
    set {_uniqueStorage()._customer = newValue}
  }
  /// Returns true if `customer` has been explicitly set.
  public var hasCustomer: Bool {return _storage._customer != nil}
  /// Clears the value of `customer`. Subsequent reads from it will return its default value.
  public mutating func clearCustomer() {_storage._customer = nil}

  /// Point-of-Sale device that submitted this purchase.
  public var register: Partner_PartnerDeviceKey {
    get {return _storage._register ?? Partner_PartnerDeviceKey()}
    set {_uniqueStorage()._register = newValue}
  }
  /// Returns true if `register` has been explicitly set.
  public var hasRegister: Bool {return _storage._register != nil}
  /// Clears the value of `register`. Subsequent reads from it will return its default value.
  public mutating func clearRegister() {_storage._register = nil}

  /// Items being ordered.
  public var item: [Commerce_Item] {
    get {return _storage._item}
    set {_uniqueStorage()._item = newValue}
  }

  /// Calculated order values and components, like taxes, subtotal, and so on.
  public var receipt: Commerce_Pos_Receipt {
    get {return _storage._receipt ?? Commerce_Pos_Receipt()}
    set {_uniqueStorage()._receipt = newValue}
  }
  /// Returns true if `receipt` has been explicitly set.
  public var hasReceipt: Bool {return _storage._receipt != nil}
  /// Clears the value of `receipt`. Subsequent reads from it will return its default value.
  public mutating func clearReceipt() {_storage._receipt = nil}

  /// Actions taken on this order.
  public var actionLog: [Commerce_Pos_PurchaseEvent] {
    get {return _storage._actionLog}
    set {_uniqueStorage()._actionLog = newValue}
  }

  /// When this order was created.
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
        case 2: try decoder.decodeSingularStringField(value: &_storage._partnerCode)
        case 3: try decoder.decodeSingularStringField(value: &_storage._locationCode)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._status)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._customer)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._register)
        case 7: try decoder.decodeRepeatedMessageField(value: &_storage._item)
        case 8: try decoder.decodeSingularMessageField(value: &_storage._receipt)
        case 9: try decoder.decodeRepeatedMessageField(value: &_storage._actionLog)
        case 10: try decoder.decodeSingularMessageField(value: &_storage._createdAt)
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
      if !_storage._partnerCode.isEmpty {
        try visitor.visitSingularStringField(value: _storage._partnerCode, fieldNumber: 2)
      }
      if !_storage._locationCode.isEmpty {
        try visitor.visitSingularStringField(value: _storage._locationCode, fieldNumber: 3)
      }
      if _storage._status != .dormant {
        try visitor.visitSingularEnumField(value: _storage._status, fieldNumber: 4)
      }
      if let v = _storage._customer {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._register {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._item.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._item, fieldNumber: 7)
      }
      if let v = _storage._receipt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if !_storage._actionLog.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._actionLog, fieldNumber: 9)
      }
      if let v = _storage._createdAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "commerce.pos"

extension Commerce_Pos_PurchaseStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DORMANT"),
    1: .same(proto: "OPEN"),
    2: .same(proto: "VOIDED"),
    3: .same(proto: "CLOSED"),
  ]
}

extension Commerce_Pos_PurchaseEvent: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "instant"),
    3: .same(proto: "message"),
  ]

  fileprivate class _StorageClass {
    var _status: Commerce_Pos_PurchaseStatus = .dormant
    var _instant: Temporal_Instant? = nil
    var _message: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _status = source._status
      _instant = source._instant
      _message = source._message
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Commerce_Pos_PurchaseEvent) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._status != other_storage._status {return false}
        if _storage._instant != other_storage._instant {return false}
        if _storage._message != other_storage._message {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Commerce_Pos_Receipt: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "subtotal"),
    2: .same(proto: "tax"),
    3: .same(proto: "discount"),
    4: .same(proto: "total"),
  ]

  public func _protobuf_generated_isEqualTo(other: Commerce_Pos_Receipt) -> Bool {
    if self.subtotal != other.subtotal {return false}
    if self.tax != other.tax {return false}
    if self.discount != other.discount {return false}
    if self.total != other.total {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Commerce_Pos_Purchase: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "partner_code"),
    3: .standard(proto: "location_code"),
    4: .same(proto: "status"),
    5: .same(proto: "customer"),
    6: .same(proto: "register"),
    7: .same(proto: "item"),
    8: .same(proto: "receipt"),
    9: .standard(proto: "action_log"),
    10: .standard(proto: "created_at"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _partnerCode: String = String()
    var _locationCode: String = String()
    var _status: Commerce_Pos_PurchaseStatus = .dormant
    var _customer: Commerce_Customer? = nil
    var _register: Partner_PartnerDeviceKey? = nil
    var _item: [Commerce_Item] = []
    var _receipt: Commerce_Pos_Receipt? = nil
    var _actionLog: [Commerce_Pos_PurchaseEvent] = []
    var _createdAt: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _partnerCode = source._partnerCode
      _locationCode = source._locationCode
      _status = source._status
      _customer = source._customer
      _register = source._register
      _item = source._item
      _receipt = source._receipt
      _actionLog = source._actionLog
      _createdAt = source._createdAt
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Commerce_Pos_Purchase) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._id != other_storage._id {return false}
        if _storage._partnerCode != other_storage._partnerCode {return false}
        if _storage._locationCode != other_storage._locationCode {return false}
        if _storage._status != other_storage._status {return false}
        if _storage._customer != other_storage._customer {return false}
        if _storage._register != other_storage._register {return false}
        if _storage._item != other_storage._item {return false}
        if _storage._receipt != other_storage._receipt {return false}
        if _storage._actionLog != other_storage._actionLog {return false}
        if _storage._createdAt != other_storage._createdAt {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
