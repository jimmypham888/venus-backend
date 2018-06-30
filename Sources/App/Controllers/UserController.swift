//
//  UserController.swift
//  App
//
//  Created by Jimmy Pham on 6/30/18.
//

import Vapor

final class UserController {
    
    // view with users
    func list(_ req: Request) throws -> Future<[User]> {
        return User.query(on: req).all()
    }
    
    // create a new user
    func create(_ req: Request) throws -> Future<User> {
        return try req.content.decode(User.self).flatMap { user in
            return user.save(on: req)
        }
    }
}

