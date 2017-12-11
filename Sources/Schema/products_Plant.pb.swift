// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: products/Plant.proto
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

/// Enumerates types or subcategories of plants that may be sold.
public enum Products_PlantType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unknown, unrecognized, or otherwise unspecified plant type.
  case unspecifiedPlant // = 0

  /// Specifies a pack of seeds, or an individual seed.
  case seed // = 1

  /// Specifies a cloned plant that is grown to some point and then sold.
  case clone // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecifiedPlant
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecifiedPlant
    case 1: self = .seed
    case 2: self = .clone
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecifiedPlant: return 0
    case .seed: return 1
    case .clone: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

/// Specifies a plant product, such as seeds, or clones, that are designed to be cultivated by the end user.
public struct Products_Plant: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Plant"

  /// Product key uniquely identifying this cannabis plant item.
  public var key: Base_ProductKey {
    get {return _storage._key ?? Base_ProductKey()}
    set {_uniqueStorage()._key = newValue}
  }
  /// Returns true if `key` has been explicitly set.
  public var hasKey: Bool {return _storage._key != nil}
  /// Clears the value of `key`. Subsequent reads from it will return its default value.
  public mutating func clearKey() {_storage._key = nil}

  /// Specific subcategory for this plant item.
  public var type: Products_PlantType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  /// Menu products made from this raw plant product.
  public var origin: [Base_ProductReference] {
    get {return _storage._origin}
    set {_uniqueStorage()._origin = newValue}
  }

  /// Product content attached to this cannabis plant item.
  public var product: Content_ProductContent {
    get {return _storage._product ?? Content_ProductContent()}
    set {_uniqueStorage()._product = newValue}
  }
  /// Returns true if `product` has been explicitly set.
  public var hasProduct: Bool {return _storage._product != nil}
  /// Clears the value of `product`. Subsequent reads from it will return its default value.
  public mutating func clearProduct() {_storage._product = nil}

  /// Handling and materials data regarding this cannabis plant item.
  public var material: Content_MaterialsData {
    get {return _storage._material ?? Content_MaterialsData()}
    set {_uniqueStorage()._material = newValue}
  }
  /// Returns true if `material` has been explicitly set.
  public var hasMaterial: Bool {return _storage._material != nil}
  /// Clears the value of `material`. Subsequent reads from it will return its default value.
  public mutating func clearMaterial() {_storage._material = nil}

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
        case 2: try decoder.decodeSingularEnumField(value: &_storage._type)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._origin)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._product)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._material)
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
      if _storage._type != .unspecifiedPlant {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 2)
      }
      if !_storage._origin.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._origin, fieldNumber: 3)
      }
      if let v = _storage._product {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._material {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "products"

extension Products_PlantType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED_PLANT"),
    1: .same(proto: "SEED"),
    2: .same(proto: "CLONE"),
  ]
}

extension Products_Plant: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "type"),
    3: .same(proto: "origin"),
    4: .same(proto: "product"),
    5: .same(proto: "material"),
  ]

  fileprivate class _StorageClass {
    var _key: Base_ProductKey? = nil
    var _type: Products_PlantType = .unspecifiedPlant
    var _origin: [Base_ProductReference] = []
    var _product: Content_ProductContent? = nil
    var _material: Content_MaterialsData? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _key = source._key
      _type = source._type
      _origin = source._origin
      _product = source._product
      _material = source._material
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Products_Plant) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let other_storage = _args.1
        if _storage._key != other_storage._key {return false}
        if _storage._type != other_storage._type {return false}
        if _storage._origin != other_storage._origin {return false}
        if _storage._product != other_storage._product {return false}
        if _storage._material != other_storage._material {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
