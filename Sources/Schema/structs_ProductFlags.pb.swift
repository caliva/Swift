// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: structs/ProductFlags.proto
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

/// top-level flags
public enum Structs_ProductFlag: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case visible // = 0
  case premium // = 1
  case featured // = 2
  case organic // = 3
  case exclusive // = 4
  case inHouse // = 5
  case lastChance // = 6
  case limitedTime // = 7
  case onSale // = 8
  case UNRECOGNIZED(Int)

  public init() {
    self = .visible
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .visible
    case 1: self = .premium
    case 2: self = .featured
    case 3: self = .organic
    case 4: self = .exclusive
    case 5: self = .inHouse
    case 6: self = .lastChance
    case 7: self = .limitedTime
    case 8: self = .onSale
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .visible: return 0
    case .premium: return 1
    case .featured: return 2
    case .organic: return 3
    case .exclusive: return 4
    case .inHouse: return 5
    case .lastChance: return 6
    case .limitedTime: return 7
    case .onSale: return 8
    case .UNRECOGNIZED(let i): return i
    }
  }

}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Structs_ProductFlag: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VISIBLE"),
    1: .same(proto: "PREMIUM"),
    2: .same(proto: "FEATURED"),
    3: .same(proto: "ORGANIC"),
    4: .same(proto: "EXCLUSIVE"),
    5: .same(proto: "IN_HOUSE"),
    6: .same(proto: "LAST_CHANCE"),
    7: .same(proto: "LIMITED_TIME"),
    8: .same(proto: "ON_SALE"),
  ]
}