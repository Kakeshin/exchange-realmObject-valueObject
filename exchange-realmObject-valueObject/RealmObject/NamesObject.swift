//
//  NamesObject.swift
//  exchange-realmObject-valueObject
//
//  Created by 岡本 翔真 on 2023/01/27.
//

import Foundation
import RealmSwift

final class NamesObject: Object {
    @objc dynamic var id: Int = 0
    var names = List<NameObject>()

    override static func primaryKey() -> String? {
        return "id"
    }
}
