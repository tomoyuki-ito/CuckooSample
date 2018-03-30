//
//  UserRepository.swift
//  CuckooSample
//
//  Created by Tomoyuki Ito on 2018/03/30.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import Foundation
import APIKit

struct User: Codable {
    
    let name: String
    let age: Int
    
}

protocol UserRepository {
    
    func getName(id: Int) -> String
    func getAge(id: Int) -> Int

    func fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void)
    
}

class APIUserRepository {
    
    func getName(id: Int) -> String {
        return "name"
    }
    
    func getAge(id: Int) -> Int {
        return 20
    }

    func fetch(success: @escaping (UserResponse) -> Void, fail: @escaping (Error) -> Void) {
        let request = UserRequest()
        Session.send(request, callbackQueue: .dispatchQueue(.global())) { result in
            switch result {
            case .success(let response):
                success(response)
            case .failure(let error):
                fail(error)
            }
        }
    }
    
}

struct UserRequest: Request {
    
    typealias Response = UserResponse
    
    let baseURL = URL(string: "http://localhost:3000")!
    let method: HTTPMethod = .get
    let path = "user"
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        guard let data = object as? Data else { fatalError() }
        
        let decoder = JSONDecoder()
        return try decoder.decode(Response.self, from: data)
    }
    
}

struct UserResponse: Codable {
    
    let success: Bool
    let user: User?
    
}
