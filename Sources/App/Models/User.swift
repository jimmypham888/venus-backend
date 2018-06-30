//
//  User.swift
//  App
//
//  Created by Jimmy Pham on 6/30/18.
//

import FluentSQLite
import Vapor

final class User: SQLiteModel {
    var id: Int?
    var username: String
    init(id: Int? = nil, username: String) {
        self.id = id
        self.username = username
    }
}
extension User: Content {}
extension User: Migration {}

