//
//  UserRepository.swift
//  CuckooSample
//
//  Created by Tomoyuki Ito on 2018/03/30.
//  Copyright © 2018 Nagisa Inc. All rights reserved.
//

import Foundation

protocol UserRepository {
    
    func getName(id: Int) -> String
    func getAge(id: Int) -> Int

}

class APIUserRepository {
    
    func getName(id: Int) -> String {
        return "name"
    }
    
    func getAge(id: Int) -> Int {
        return 20
    }

}
