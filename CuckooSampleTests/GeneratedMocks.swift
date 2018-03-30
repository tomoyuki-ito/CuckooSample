// MARK: - Mocks generated from file: CuckooSample/UserRepository.swift at 2018-03-30 02:22:08 +0000

//
//  UserRepository.swift
//  CuckooSample
//
//  Created by Tomoyuki Ito on 2018/03/30.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import Cuckoo
@testable import CuckooSample

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

    

    

    
    // ["name": "getName", "returnSignature": " -> String", "fullyQualifiedName": "getName(id: Int) -> String", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(217..<224), nameRange: CountableRange(217..<219))], "returnType": "String", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
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
    
    // ["name": "getAge", "returnSignature": " -> Int", "fullyQualifiedName": "getAge(id: Int) -> Int", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(252..<259), nameRange: CountableRange(252..<254))], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
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
        
    }


}

 class UserRepositoryStub: UserRepository {
    

    

    
     func getName(id: Int)  -> String {
        return DefaultValueRegistry.defaultValue(for: String.self)
    }
    
     func getAge(id: Int)  -> Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
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

    

    

    
    // ["name": "getName", "returnSignature": " -> String", "fullyQualifiedName": "getName(id: Int) -> String", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(320..<327), nameRange: CountableRange(320..<322))], "returnType": "String", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
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
    
    // ["name": "getAge", "returnSignature": " -> Int", "fullyQualifiedName": "getAge(id: Int) -> Int", "parameterSignature": "id: Int", "parameterSignatureWithoutNames": "id: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "hasClosureParams": false, "@type": "ClassMethod", "accessibility": "", "parameterNames": "id", "call": "id: id", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("id"), name: "id", type: "Int", range: CountableRange(390..<397), nameRange: CountableRange(390..<392))], "returnType": "Int", "isOptional": false, "stubFunction": "Cuckoo.StubFunction"]
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
        
    }


}

 class APIUserRepositoryStub: APIUserRepository {
    

    

    
     override func getName(id: Int)  -> String {
        return DefaultValueRegistry.defaultValue(for: String.self)
    }
    
     override func getAge(id: Int)  -> Int {
        return DefaultValueRegistry.defaultValue(for: Int.self)
    }
    
}



