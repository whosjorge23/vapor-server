//
//  UserController.swift
//  
//
//  Created by Giorgio Giannotta on 15/04/23.
//

import Vapor

final class UserController {
    let users: [User]

        init() {
            // Initialize your array of WordOfTheDay objects here
            self.users = [
                User(name: "John", lastName: "Doe", age: 21, work: "iOS Developer", hobbies: [
                    User.Hobby(name: "NFL", type: "Sport"),
                    User.Hobby(name: "TV Series", type: "Chilling")
                ]),
                User(name: "Jane", lastName: "Doe", age: 21, work: "Flutter Developer", hobbies: [
                    User.Hobby(name: "Cooking", type: "Self-Improvement"),
                    User.Hobby(name: "TV Series", type: "Chilling")
                 ]),
                User(name: "Jessy", lastName: "Doe", age: 15, work: "Student", hobbies: [
                    User.Hobby(name: "Reading", type: "Self-Improvement"),
                    User.Hobby(name: "TV Movies", type: "Chilling")
                ]),
            ]
        }

    func getUsers(_ req: Request) throws -> [User] {
            return self.users
        }
}
