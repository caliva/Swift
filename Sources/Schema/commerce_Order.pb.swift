// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: commerce/Order.proto
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

/// Specifies the type of order requested.
public enum Commerce_OrderType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Express pickup order.
  case pickup // = 0

  /// Delivery order.
  case delivery // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .pickup
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .pickup
    case 1: self = .delivery
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .pickup: return 0
    case .delivery: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the types of delivery timing.
public enum Commerce_SchedulingType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// As soon as possible.
  case asap // = 0

  /// Desired time.
  case timed // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .asap
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .asap
    case 1: self = .timed
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .asap: return 0
    case .timed: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Enumeration for current status of order
public enum Commerce_OrderStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Order has been submitted and is not yet approved.
  case pending // = 0

  /// Order has been approved for fulfillment.
  case approved // = 1

  /// Order could not be fulfilled for some reason.
  case rejected // = 2

  /// Order has been assigned.
  case assigned // = 3

  /// Order is en-route to the user (for delivery).
  case enRoute // = 4

  /// Order has been fulfilled and is considered complete.
  case fulfilled // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .pending
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .pending
    case 1: self = .approved
    case 2: self = .rejected
    case 3: self = .assigned
    case 4: self = .enRoute
    case 5: self = .fulfilled
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .pending: return 0
    case .approved: return 1
    case .rejected: return 2
    case .assigned: return 3
    case .enRoute: return 4
    case .fulfilled: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies the desired timing of the delivery order.
public struct Commerce_OrderScheduling: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".OrderScheduling"

  /// Scheduling type, either 'ASAP' or a target time.
  public var scheduling: Commerce_SchedulingType {
    get {return _storage._scheduling}
    set {_uniqueStorage()._scheduling = newValue}
  }

  /// Desired delivery time.
  public var desiredTime: Temporal_Instant {
    get {return _storage._desiredTime ?? Temporal_Instant()}
    set {_uniqueStorage()._desiredTime = newValue}
  }
  /// Returns true if `desiredTime` has been explicitly set.
  public var hasDesiredTime: Bool {return _storage._desiredTime != nil}
  /// Clears the value of `desiredTime`. Subsequent reads from it will return its default value.
  public mutating func clearDesiredTime() {_storage._desiredTime = nil}

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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._scheduling)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._desiredTime)
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
      if _storage._scheduling != .asap {
        try visitor.visitSingularEnumField(value: _storage._scheduling, fieldNumber: 1)
      }
      if let v = _storage._desiredTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Specifies a moment at which an order changed status, when it happened, and, optionally, why.
public struct Commerce_StatusCheckin: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".StatusCheckin"

  /// Status the order moved to.
  public var status: Commerce_OrderStatus {
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
      if _storage._status != .pending {
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

/// Specifies a unique key for a commercial order.
public struct Commerce_OrderKey: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".OrderKey"

  /// Order ID, assigned by the server upon creation.
  public var id: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.id)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Represents a full order submitted to the server for fulfillment, from an end-user, for delivery or express pickup.
public struct Commerce_Order: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Order"

  /// ID assigned to the order by the server.
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// Type of order requested.
  public var type: Commerce_OrderType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Current status of this order.
  public var status: Commerce_OrderStatus {
    get {return _storage._status}
    set {_uniqueStorage()._status = newValue}
  }

  /// Customer that submitted this order.
  public var customer: Commerce_Customer {
    get {return _storage._customer ?? Commerce_Customer()}
    set {_uniqueStorage()._customer = newValue}
  }
  /// Returns true if `customer` has been explicitly set.
  public var hasCustomer: Bool {return _storage._customer != nil}
  /// Clears the value of `customer`. Subsequent reads from it will return its default value.
  public mutating func clearCustomer() {_storage._customer = nil}

  /// Scheduling spec for this order.
  public var scheduling: Commerce_OrderScheduling {
    get {return _storage._scheduling ?? Commerce_OrderScheduling()}
    set {_uniqueStorage()._scheduling = newValue}
  }
  /// Returns true if `scheduling` has been explicitly set.
  public var hasScheduling: Bool {return _storage._scheduling != nil}
  /// Clears the value of `scheduling`. Subsequent reads from it will return its default value.
  public mutating func clearScheduling() {_storage._scheduling = nil}

  /// Location for delivery, if applicable.
  public var destination: Commerce_DeliveryDestination {
    get {return _storage._destination ?? Commerce_DeliveryDestination()}
    set {_uniqueStorage()._destination = newValue}
  }
  /// Returns true if `destination` has been explicitly set.
  public var hasDestination: Bool {return _storage._destination != nil}
  /// Clears the value of `destination`. Subsequent reads from it will return its default value.
  public mutating func clearDestination() {_storage._destination = nil}

  /// User-provided notes or questions.
  public var notes: String {
    get {return _storage._notes}
    set {_uniqueStorage()._notes = newValue}
  }

  /// Items being ordered.
  public var item: [Commerce_Item] {
    get {return _storage._item}
    set {_uniqueStorage()._item = newValue}
  }

  /// Actions taken on this order.
  public var actionLog: [Commerce_StatusCheckin] {
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
        case 2: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 3: try decoder.decodeSingularEnumField(value: &_storage._status)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._customer)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._scheduling)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._destination)
        case 7: try decoder.decodeSingularStringField(value: &_storage._notes)
        case 8: try decoder.decodeRepeatedMessageField(value: &_storage._item)
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
      if _storage._type != .pickup {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 2)
      }
      if _storage._status != .pending {
        try visitor.visitSingularEnumField(value: _storage._status, fieldNumber: 3)
      }
      if let v = _storage._customer {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._scheduling {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._destination {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if !_storage._notes.isEmpty {
        try visitor.visitSingularStringField(value: _storage._notes, fieldNumber: 7)
      }
      if !_storage._item.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._item, fieldNumber: 8)
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

fileprivate let _protobuf_package = "commerce"

extension Commerce_OrderType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PICKUP"),
    1: .same(proto: "DELIVERY"),
  ]
}

extension Commerce_SchedulingType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ASAP"),
    1: .same(proto: "TIMED"),
  ]
}

extension Commerce_OrderStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PENDING"),
    1: .same(proto: "APPROVED"),
    2: .same(proto: "REJECTED"),
    3: .same(proto: "ASSIGNED"),
    4: .same(proto: "EN_ROUTE"),
    5: .same(proto: "FULFILLED"),
  ]
}

extension Commerce_OrderScheduling: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "scheduling"),
    2: .standard(proto: "desired_time"),
  ]

  fileprivate class _StorageClass {
    var _scheduling: Commerce_SchedulingType = .asap
    var _desiredTime: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _scheduling = source._scheduling
      _desiredTime = source._desiredTime
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Commerce_OrderScheduling) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._scheduling != other_storage._scheduling {return false}
        if _storage._desiredTime != other_storage._desiredTime {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Commerce_StatusCheckin: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
    2: .same(proto: "instant"),
    3: .same(proto: "message"),
  ]

  fileprivate class _StorageClass {
    var _status: Commerce_OrderStatus = .pending
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

  public func _protobuf_generated_isEqualTo(other: Commerce_StatusCheckin) -> Bool {
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

extension Commerce_OrderKey: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
  ]

  public func _protobuf_generated_isEqualTo(other: Commerce_OrderKey) -> Bool {
    if self.id != other.id {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Commerce_Order: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "type"),
    3: .same(proto: "status"),
    4: .same(proto: "customer"),
    5: .same(proto: "scheduling"),
    6: .same(proto: "destination"),
    7: .same(proto: "notes"),
    8: .same(proto: "item"),
    9: .standard(proto: "action_log"),
    10: .standard(proto: "created_at"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _type: Commerce_OrderType = .pickup
    var _status: Commerce_OrderStatus = .pending
    var _customer: Commerce_Customer? = nil
    var _scheduling: Commerce_OrderScheduling? = nil
    var _destination: Commerce_DeliveryDestination? = nil
    var _notes: String = String()
    var _item: [Commerce_Item] = []
    var _actionLog: [Commerce_StatusCheckin] = []
    var _createdAt: Temporal_Instant? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _type = source._type
      _status = source._status
      _customer = source._customer
      _scheduling = source._scheduling
      _destination = source._destination
      _notes = source._notes
      _item = source._item
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

  public func _protobuf_generated_isEqualTo(other: Commerce_Order) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._id != other_storage._id {return false}
        if _storage._type != other_storage._type {return false}
        if _storage._status != other_storage._status {return false}
        if _storage._customer != other_storage._customer {return false}
        if _storage._scheduling != other_storage._scheduling {return false}
        if _storage._destination != other_storage._destination {return false}
        if _storage._notes != other_storage._notes {return false}
        if _storage._item != other_storage._item {return false}
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
