//
//  City.swift
//  RegisterYTB
//
//  Created by daicudu on 12/19/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import Foundation

class City {
    var cityCode: Int
    var name: String
    
    init?(dictionary: JSON) {
        guard let cityCode = dictionary["CityCode"] as? Int else { return nil }
        guard let name = dictionary["Name"] as? String else { return nil }
        self.cityCode = cityCode
        self.name = name
    }
}
