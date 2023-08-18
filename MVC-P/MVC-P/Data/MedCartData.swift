//
//  MedCartData.swift
//  MVC-P
//
//  Created by Sakshi on 17/08/23.
//

import Foundation
import UIKit

class MedCartData{
    static func getAllMedData() -> [MedCartModel]{
    var arrData = [MedCartModel]()
        arrData = [
            MedCartModel(img: #imageLiteral(resourceName: "two"), title: "soframicine"),MedCartModel(img: #imageLiteral(resourceName: "two"), title: "CCM")
        ]
        return arrData
    }
}
