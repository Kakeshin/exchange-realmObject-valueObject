//
//  NamesModel.swift
//  exchange-realmObject-valueObject
//
//  Created by 岡本 翔真 on 2023/01/27.
//

struct NamesModel {
    var names: [NameModel]

    init() {
        self.names = [NameModel()]
    }

    convenience init(names: [NameModel]) {
        self.init()
        self.names = names
    }
}
