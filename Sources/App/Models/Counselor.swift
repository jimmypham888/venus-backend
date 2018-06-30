//
//  Counselor.swift
//  App
//
//  Created by Jimmy Pham on 6/30/18.
//

import FluentSQLite
import Vapor

final class Counselor: SQLiteModel {
    
    var id: Int?
    var name: String
    var location: String
    var linkedIn: String
    var degrees: [String]
    var jobs: [String]
    
    init(id: Int? = nil, name: String, location: String, linkedIn: String, degrees: [String], jobs: [String]) {
        self.id = id
        self.name = name
        self.location = location
        self.linkedIn = linkedIn
        self.degrees = degrees
        self.jobs = jobs
    }
}
extension Counselor: Content {}
extension Counselor: Migration {}
