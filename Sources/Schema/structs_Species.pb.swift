// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: structs/Species.proto
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

public enum Structs_Species: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case unspecified // = 0
  case sativa // = 1
  case hybridSativa // = 2
  case hybrid // = 3
  case hybridIndica // = 4
  case indica // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .sativa
    case 2: self = .hybridSativa
    case 3: self = .hybrid
    case 4: self = .hybridIndica
    case 5: self = .indica
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .sativa: return 1
    case .hybridSativa: return 2
    case .hybrid: return 3
    case .hybridIndica: return 4
    case .indica: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Structs_Species: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "SATIVA"),
    2: .same(proto: "HYBRID_SATIVA"),
    3: .same(proto: "HYBRID"),
    4: .same(proto: "HYBRID_INDICA"),
    5: .same(proto: "INDICA"),
  ]
}
