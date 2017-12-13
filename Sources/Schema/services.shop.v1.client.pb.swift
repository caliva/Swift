/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: shop/v1/ShopService_v1.proto
 *
 */

/*
 * Copyright 2017, gRPC Authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import Foundation
import Dispatch
import gRPC
import SwiftProtobuf

/// Type for errors thrown from generated client code.
public enum Services_Shop_V1_ShopClientError : Error {
  case endOfStream
  case invalidMessageReceived
  case error(c: CallResult)
}

/// Ping (Unary)
public class Services_Shop_V1_ShopPingCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/services.shop.v1.Shop/Ping")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Services_Shop_V1_Ping_Request,
                       metadata: Metadata) throws -> Services_Shop_V1_Ping_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Services_Shop_V1_Ping_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Services_Shop_V1_ShopClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Services_Shop_V1_Ping_Request,
                         metadata: Metadata,
                         completion: @escaping (Services_Shop_V1_Ping_Response?, CallResult)->())
    throws -> Services_Shop_V1_ShopPingCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Services_Shop_V1_Ping_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// ShopInfo (Unary)
public class Services_Shop_V1_ShopShopInfoCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/services.shop.v1.Shop/ShopInfo")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Services_Shop_V1_ShopInfo_Request,
                       metadata: Metadata) throws -> Services_Shop_V1_ShopInfo_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Services_Shop_V1_ShopInfo_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Services_Shop_V1_ShopClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Services_Shop_V1_ShopInfo_Request,
                         metadata: Metadata,
                         completion: @escaping (Services_Shop_V1_ShopInfo_Response?, CallResult)->())
    throws -> Services_Shop_V1_ShopShopInfoCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Services_Shop_V1_ShopInfo_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// EnrollMember (Unary)
public class Services_Shop_V1_ShopEnrollMemberCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/services.shop.v1.Shop/EnrollMember")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Services_Shop_V1_EnrollMember_Request,
                       metadata: Metadata) throws -> Services_Shop_V1_EnrollMember_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Services_Shop_V1_EnrollMember_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Services_Shop_V1_ShopClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Services_Shop_V1_EnrollMember_Request,
                         metadata: Metadata,
                         completion: @escaping (Services_Shop_V1_EnrollMember_Response?, CallResult)->())
    throws -> Services_Shop_V1_ShopEnrollMemberCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Services_Shop_V1_EnrollMember_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// CheckZipcode (Unary)
public class Services_Shop_V1_ShopCheckZipcodeCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/services.shop.v1.Shop/CheckZipcode")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Services_Shop_V1_CheckZipcode_Request,
                       metadata: Metadata) throws -> Services_Shop_V1_CheckZipcode_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Services_Shop_V1_CheckZipcode_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Services_Shop_V1_ShopClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Services_Shop_V1_CheckZipcode_Request,
                         metadata: Metadata,
                         completion: @escaping (Services_Shop_V1_CheckZipcode_Response?, CallResult)->())
    throws -> Services_Shop_V1_ShopCheckZipcodeCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Services_Shop_V1_CheckZipcode_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// VerifyMember (Unary)
public class Services_Shop_V1_ShopVerifyMemberCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/services.shop.v1.Shop/VerifyMember")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Services_Shop_V1_VerifyMember_Request,
                       metadata: Metadata) throws -> Services_Shop_V1_VerifyMember_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Services_Shop_V1_VerifyMember_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Services_Shop_V1_ShopClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Services_Shop_V1_VerifyMember_Request,
                         metadata: Metadata,
                         completion: @escaping (Services_Shop_V1_VerifyMember_Response?, CallResult)->())
    throws -> Services_Shop_V1_ShopVerifyMemberCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Services_Shop_V1_VerifyMember_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// SubmitOrder (Unary)
public class Services_Shop_V1_ShopSubmitOrderCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/services.shop.v1.Shop/SubmitOrder")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Services_Shop_V1_SubmitOrder_Request,
                       metadata: Metadata) throws -> Services_Shop_V1_SubmitOrder_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Services_Shop_V1_SubmitOrder_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Services_Shop_V1_ShopClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Services_Shop_V1_SubmitOrder_Request,
                         metadata: Metadata,
                         completion: @escaping (Services_Shop_V1_SubmitOrder_Response?, CallResult)->())
    throws -> Services_Shop_V1_ShopSubmitOrderCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Services_Shop_V1_SubmitOrder_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// GetOrder (Unary)
public class Services_Shop_V1_ShopGetOrderCall {
  private var call : Call

  /// Create a call.
  fileprivate init(_ channel: Channel) {
    self.call = channel.makeCall("/services.shop.v1.Shop/GetOrder")
  }

  /// Run the call. Blocks until the reply is received.
  fileprivate func run(request: Services_Shop_V1_GetOrder_Request,
                       metadata: Metadata) throws -> Services_Shop_V1_GetOrder_Response {
    let sem = DispatchSemaphore(value: 0)
    var returnCallResult : CallResult!
    var returnResponse : Services_Shop_V1_GetOrder_Response?
    _ = try start(request:request, metadata:metadata) {response, callResult in
      returnResponse = response
      returnCallResult = callResult
      sem.signal()
    }
    _ = sem.wait(timeout: DispatchTime.distantFuture)
    if let returnResponse = returnResponse {
      return returnResponse
    } else {
      throw Services_Shop_V1_ShopClientError.error(c: returnCallResult)
    }
  }

  /// Start the call. Nonblocking.
  fileprivate func start(request: Services_Shop_V1_GetOrder_Request,
                         metadata: Metadata,
                         completion: @escaping (Services_Shop_V1_GetOrder_Response?, CallResult)->())
    throws -> Services_Shop_V1_ShopGetOrderCall {

      let requestData = try request.serializedData()
      try call.start(.unary,
                     metadata:metadata,
                     message:requestData)
      {(callResult) in
        if let responseData = callResult.resultData,
          let response = try? Services_Shop_V1_GetOrder_Response(serializedData:responseData) {
          completion(response, callResult)
        } else {
          completion(nil, callResult)
        }
      }
      return self
  }

  /// Cancel the call.
  public func cancel() {
    call.cancel()
  }
}

/// Call methods of this class to make API calls.
public class Services_Shop_V1_ShopService {
  private var channel: Channel

  /// This metadata will be sent with all requests.
  public var metadata : Metadata

  /// This property allows the service host name to be overridden.
  /// For example, it can be used to make calls to "localhost:8080"
  /// appear to be to "example.com".
  public var host : String {
    get {
      return self.channel.host
    }
    set {
      self.channel.host = newValue
    }
  }

  /// Create a client that makes insecure connections.
  public init(address: String) {
    gRPC.initialize()
    channel = Channel(address:address)
    metadata = Metadata()
  }

  /// Create a client that makes secure connections.
  public init(address: String, certificates: String?, host: String?) {
    gRPC.initialize()
    channel = Channel(address:address, certificates:certificates, host:host)
    metadata = Metadata()
  }

  /// Synchronous. Unary.
  public func ping(_ request: Services_Shop_V1_Ping_Request)
    throws
    -> Services_Shop_V1_Ping_Response {
      return try Services_Shop_V1_ShopPingCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func ping(_ request: Services_Shop_V1_Ping_Request,
                  completion: @escaping (Services_Shop_V1_Ping_Response?, CallResult)->())
    throws
    -> Services_Shop_V1_ShopPingCall {
      return try Services_Shop_V1_ShopPingCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func shopinfo(_ request: Services_Shop_V1_ShopInfo_Request)
    throws
    -> Services_Shop_V1_ShopInfo_Response {
      return try Services_Shop_V1_ShopShopInfoCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func shopinfo(_ request: Services_Shop_V1_ShopInfo_Request,
                  completion: @escaping (Services_Shop_V1_ShopInfo_Response?, CallResult)->())
    throws
    -> Services_Shop_V1_ShopShopInfoCall {
      return try Services_Shop_V1_ShopShopInfoCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func enrollmember(_ request: Services_Shop_V1_EnrollMember_Request)
    throws
    -> Services_Shop_V1_EnrollMember_Response {
      return try Services_Shop_V1_ShopEnrollMemberCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func enrollmember(_ request: Services_Shop_V1_EnrollMember_Request,
                  completion: @escaping (Services_Shop_V1_EnrollMember_Response?, CallResult)->())
    throws
    -> Services_Shop_V1_ShopEnrollMemberCall {
      return try Services_Shop_V1_ShopEnrollMemberCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func checkzipcode(_ request: Services_Shop_V1_CheckZipcode_Request)
    throws
    -> Services_Shop_V1_CheckZipcode_Response {
      return try Services_Shop_V1_ShopCheckZipcodeCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func checkzipcode(_ request: Services_Shop_V1_CheckZipcode_Request,
                  completion: @escaping (Services_Shop_V1_CheckZipcode_Response?, CallResult)->())
    throws
    -> Services_Shop_V1_ShopCheckZipcodeCall {
      return try Services_Shop_V1_ShopCheckZipcodeCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func verifymember(_ request: Services_Shop_V1_VerifyMember_Request)
    throws
    -> Services_Shop_V1_VerifyMember_Response {
      return try Services_Shop_V1_ShopVerifyMemberCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func verifymember(_ request: Services_Shop_V1_VerifyMember_Request,
                  completion: @escaping (Services_Shop_V1_VerifyMember_Response?, CallResult)->())
    throws
    -> Services_Shop_V1_ShopVerifyMemberCall {
      return try Services_Shop_V1_ShopVerifyMemberCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func submitorder(_ request: Services_Shop_V1_SubmitOrder_Request)
    throws
    -> Services_Shop_V1_SubmitOrder_Response {
      return try Services_Shop_V1_ShopSubmitOrderCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func submitorder(_ request: Services_Shop_V1_SubmitOrder_Request,
                  completion: @escaping (Services_Shop_V1_SubmitOrder_Response?, CallResult)->())
    throws
    -> Services_Shop_V1_ShopSubmitOrderCall {
      return try Services_Shop_V1_ShopSubmitOrderCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
  /// Synchronous. Unary.
  public func getorder(_ request: Services_Shop_V1_GetOrder_Request)
    throws
    -> Services_Shop_V1_GetOrder_Response {
      return try Services_Shop_V1_ShopGetOrderCall(channel).run(request:request, metadata:metadata)
  }
  /// Asynchronous. Unary.
  public func getorder(_ request: Services_Shop_V1_GetOrder_Request,
                  completion: @escaping (Services_Shop_V1_GetOrder_Response?, CallResult)->())
    throws
    -> Services_Shop_V1_ShopGetOrderCall {
      return try Services_Shop_V1_ShopGetOrderCall(channel).start(request:request,
                                                 metadata:metadata,
                                                 completion:completion)
  }
}