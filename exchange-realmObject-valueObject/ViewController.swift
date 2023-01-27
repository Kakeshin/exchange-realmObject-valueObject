//
//  ViewController.swift
//  exchange-realmObject-valueObject
//
//  Created by 岡本 翔真 on 2023/01/27.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func exchangeModelToObject() {
        let names = [
            NameModel(firstName: "Jone", lastName: "William"),
            NameModel(firstName: "George", lastName: "Busch")
        ]

        let namesObject = NamesModel(names: names).toObject()
    }


}

extension NamesModel {
    func toObject() -> List<NameObject> {
        let ret = List<NameObject>()
        let object = self.names.enumerated().map {
            return NameObject(id: $0.offset,
                              firstName: $0.element.firstName,
                              lastName: $0.element.lastName)
        }
        ret.append(objectsIn: object)
        return ret
    }
}

extension NamesObject {
    func toModel() -> [NameModel] {
        var ret = [NameModel]()
        let model = self.names.map {
            return NameModel(firstName: $0.firstName,
                             lastName: $0.lastName)
        }
        ret.append(contentsOf: Array(model))
        return ret
    }
}

