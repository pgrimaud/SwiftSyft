// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: syft_proto/execution/v1/state_tensor.proto
//
// For information on using the generated types, please see the documentation:
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

struct SyftProto_Execution_V1_StateTensor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var tensor: OneOf_Tensor? {
    get {return _storage._tensor}
    set {_uniqueStorage()._tensor = newValue}
  }

  var torchTensor: SyftProto_Types_Torch_V1_TorchTensor {
    get {
      if case .torchTensor(let v)? = _storage._tensor {return v}
      return SyftProto_Types_Torch_V1_TorchTensor()
    }
    set {_uniqueStorage()._tensor = .torchTensor(newValue)}
  }

  var torchParam: SyftProto_Types_Torch_V1_Parameter {
    get {
      if case .torchParam(let v)? = _storage._tensor {return v}
      return SyftProto_Types_Torch_V1_Parameter()
    }
    set {_uniqueStorage()._tensor = .torchParam(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Tensor: Equatable {
    case torchTensor(SyftProto_Types_Torch_V1_TorchTensor)
    case torchParam(SyftProto_Types_Torch_V1_Parameter)

  #if !swift(>=4.1)
    static func ==(lhs: SyftProto_Execution_V1_StateTensor.OneOf_Tensor, rhs: SyftProto_Execution_V1_StateTensor.OneOf_Tensor) -> Bool {
      switch (lhs, rhs) {
      case (.torchTensor(let l), .torchTensor(let r)): return l == r
      case (.torchParam(let l), .torchParam(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "syft_proto.execution.v1"

extension SyftProto_Execution_V1_StateTensor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StateTensor"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "torch_tensor"),
    2: .standard(proto: "torch_param"),
  ]

  fileprivate class _StorageClass {
    var _tensor: SyftProto_Execution_V1_StateTensor.OneOf_Tensor?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _tensor = source._tensor
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1:
          var v: SyftProto_Types_Torch_V1_TorchTensor?
          if let current = _storage._tensor {
            try decoder.handleConflictingOneOf()
            if case .torchTensor(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._tensor = .torchTensor(v)}
        case 2:
          var v: SyftProto_Types_Torch_V1_Parameter?
          if let current = _storage._tensor {
            try decoder.handleConflictingOneOf()
            if case .torchParam(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._tensor = .torchParam(v)}
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._tensor {
      case .torchTensor(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      case .torchParam(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: SyftProto_Execution_V1_StateTensor, rhs: SyftProto_Execution_V1_StateTensor) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._tensor != rhs_storage._tensor {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
