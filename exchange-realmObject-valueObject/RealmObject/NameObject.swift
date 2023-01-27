//
//  NameObject.swift
//  exchange-realmObject-valueObject
//
//  Created by 岡本 翔真 on 2023/01/27.
//

import Foundation
import RealmSwift

final class NameObject: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var firstName: String = ""
    @objc dynamic var lastName: String = ""

    override static func primaryKey() -> String? {
        return "id"
    }

    init(id: Int, firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
    }
}
