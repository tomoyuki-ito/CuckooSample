// MARK: - Mocks generated from file: CuckooSample/UserRepository.swift at 2018-03-30 09:26:55 +0000

//
//  UserRepository.swift
//  CuckooSample
//
//  Created by Tomoyuki Ito on 2018/03/30.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import Cuckoo
@testable import CuckooSample

import APIKit
import Foundation

class MockUserRepository: UserRepository, Cuckoo.Mock {
    typealias MocksType = UserRepository
    typealias Stubbing = __StubbingProxy_UserRepository
    typealias Verification = __VerificationProxy_UserRepository
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: UserRepository?

    func spy(on victim: UserRepository) -> Self {
        observed = victim
        return self
    }

    

    

    
    // ["name": "getName", "returnSignature": " -> String", "fullyQualifiedName": "getName(id: Int) -> String", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(305..<312), nameRange: CountableRange(305..<307))], "returnType": "String", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     func getName(id: Int)  -> String {
        
            return cuckoo_manager.call("getName(id: Int) -> String",
                parameters: (id),
                original: observed.map { o in
                    return { (args) -> String in
                        let (id) = args
                        return o.getName(id: id)
                    }
                })
        
    }
    
    // ["name": "getAge", "returnSignature": " -> Int", "fullyQualifiedName": "getAge(id: Int) -> Int", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(340..<347), nameRange: CountableRange(340..<342))], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     func getAge(id: Int)  -> Int {
        
            return cuckoo_manager.call("getAge(id: Int) -> Int",
                parameters: (id),
                original: observed.map { o in
                    return { (args) -> Int in
                        let (id) = args
                        return o.getAge(id: id)
                    }
                })
        
    }
    
    // ["name": "fetch", "returnSignature": "", "fullyQualifiedName": "fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)", "parameterSignature": "success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void", "parameterSignatureWithoutNames": "success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void", "inputTypes": "(UserResponse) -> Void, (Error) -> Void", "isThrowing": false, "isInit": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "success, fail", "call": "success: success, fail: fail", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("success"), name: "success", type: "@escaping (UserResponse) -> Void", range: CountableRange(372..<413), nameRange: CountableRange(372..<379)), CuckooGeneratorFramework.MethodParameter(label: Optional("fail"), name: "fail", type: "@escaping (Error) -> Void", range: CountableRange(415..<446), nameRange: CountableRange(415..<419))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     func fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)  {
        
            return cuckoo_manager.call("fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)",
                parameters: (success, fail),
                original: observed.map { o in
                    return { (args) in
                        let (success, fail) = args
                         o.fetch(success: success, fail: fail)
                    }
                })
        
    }
    

    struct __StubbingProxy_UserRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func getName<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.StubFunction<(Int), String> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub("getName(id: Int) -> String", parameterMatchers: matchers))
        }
        
        func getAge<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.StubFunction<(Int), Int> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub("getAge(id: Int) -> Int", parameterMatchers: matchers))
        }
        
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, fail: M2) -> Cuckoo.StubNoReturnFunction<((UserResponse) -> Void, (Error) -> Void)> where M1.MatchedType == (UserResponse) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((UserResponse) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: fail) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_UserRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func getName<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<String> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify("getName(id: Int) -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func getAge<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify("getAge(id: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, fail: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (UserResponse) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((UserResponse) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: fail) { $0.1 }]
            return cuckoo_manager.verify("fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class UserRepositoryStub: UserRepository {
    

    

    
     func getName(id: Int)  -> String {
        return DefaultValueRegistry.defaultValue(for: String.self)
    }
    
     func getAge(id: Int)  -> Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
    }
    
     func fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



class MockAPIUserRepository: APIUserRepository, Cuckoo.Mock {
    typealias MocksType = APIUserRepository
    typealias Stubbing = __StubbingProxy_APIUserRepository
    typealias Verification = __VerificationProxy_APIUserRepository
    let cuckoo_manager = Cuckoo.MockManager()

    private var observed: APIUserRepository?

    func spy(on victim: APIUserRepository) -> Self {
        observed = victim
        return self
    }

    

    

    
    // ["name": "getName", "returnSignature": " -> String", "fullyQualifiedName": "getName(id: Int) -> String", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(504..<511), nameRange: CountableRange(504..<506))], "returnType": "String", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func getName(id: Int)  -> String {
        
            return cuckoo_manager.call("getName(id: Int) -> String",
                parameters: (id),
                original: observed.map { o in
                    return { (args) -> String in
                        let (id) = args
                        return o.getName(id: id)
                    }
                })
        
    }
    
    // ["name": "getAge", "returnSignature": " -> Int", "fullyQualifiedName": "getAge(id: Int) -> Int", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(574..<581), nameRange: CountableRange(574..<576))], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
     override func getAge(id: Int)  -> Int {
        
            return cuckoo_manager.call("getAge(id: Int) -> Int",
                parameters: (id),
                original: observed.map { o in
                    return { (args) -> Int in
                        let (id) = args
                        return o.getAge(id: id)
                    }
                })
        
    }
    
    // ["name": "fetch", "returnSignature": "", "fullyQualifiedName": "fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)", "parameterSignature": "success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void", "parameterSignatureWithoutNames": "success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void", "inputTypes": "(UserResponse) -> Void, (Error) -> Void", "isThrowing": false, "isInit": false, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "success, fail", "call": "success: success, fail: fail", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("success"), name: "success", type: "@escaping (UserResponse) -> Void", range: CountableRange(632..<673), nameRange: CountableRange(632..<639)), CuckooGeneratorFramework.MethodParameter(label: Optional("fail"), name: "fail", type: "@escaping (Error) -> Void", range: CountableRange(675..<706), nameRange: CountableRange(675..<679))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.StubNoReturnFunction"]
     override func fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)  {
        
            return cuckoo_manager.call("fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)",
                parameters: (success, fail),
                original: observed.map { o in
                    return { (args) in
                        let (success, fail) = args
                         o.fetch(success: success, fail: fail)
                    }
                })
        
    }
    

    struct __StubbingProxy_APIUserRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager

        init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        func getName<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.StubFunction<(Int), String> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub("getName(id: Int) -> String", parameterMatchers: matchers))
        }
        
        func getAge<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.StubFunction<(Int), Int> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub("getAge(id: Int) -> Int", parameterMatchers: matchers))
        }
        
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, fail: M2) -> Cuckoo.StubNoReturnFunction<((UserResponse) -> Void, (Error) -> Void)> where M1.MatchedType == (UserResponse) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((UserResponse) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: fail) { $0.1 }]
            return .init(stub: cuckoo_manager.createStub("fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)", parameterMatchers: matchers))
        }
        
    }


    struct __VerificationProxy_APIUserRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation

        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }

        

        
        @discardableResult
        func getName<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<String> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify("getName(id: Int) -> String", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func getAge<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify("getAge(id: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func fetch<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(success: M1, fail: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (UserResponse) -> Void, M2.MatchedType == (Error) -> Void {
            let matchers: [Cuckoo.ParameterMatcher<((UserResponse) -> Void, (Error) -> Void)>] = [wrap(matchable: success) { $0.0 }, wrap(matchable: fail) { $0.1 }]
            return cuckoo_manager.verify("fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
    }


}

 class APIUserRepositoryStub: APIUserRepository {
    

    

    
     override func getName(id: Int)  -> String {
        return DefaultValueRegistry.defaultValue(for: String.self)
    }
    
     override func getAge(id: Int)  -> Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
    }
    
     override func fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}



