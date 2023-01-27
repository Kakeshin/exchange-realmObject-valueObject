//
//  NameModel.swift
//  exchange-realmObject-valueObject
//
//  Created by 岡本 翔真 on 2023/01/27.
//

struct NameModel {
    var firstName: String
    var lastName: String

    init() {
        self.firstName = ""
        self.lastName = ""
    }

    convenience init(firstName: String,
                     lastName: String) {
        self.init()
        self.firstName = firstName
        self.lastName = lastName
    }
}
