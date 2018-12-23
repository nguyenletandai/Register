//
//  DataService.swift
//  RegisterYTB
//
//  Created by daicudu on 12/19/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import Foundation
typealias JSON = Dictionary<AnyHashable,Any>
class DataService {
    static var shared: DataService = DataService()
    var _dataCities: [City]?
    var dataCities : [City] {
        get {
            if _dataCities == nil {
                getDataCity()
            }
            return _dataCities ?? []
        }
        set {
            _dataCities = newValue
        }
    }
    
    
    
    
    func getDataCity() {
        _dataCities = []
        guard let path = Bundle.main.path(forResource: "Cities", ofType: "plist") else { return }
        guard let dict = NSDictionary.init(contentsOfFile: path) as? JSON else {return}
        guard let citiesJon = dict["Cities"] as? [JSON] else {return}
        
        for cityDictionary in citiesJon {
            if let city = City(dictionary: cityDictionary) {
//                print(city.name, city.cityCode)
                _dataCities?.append(city)
            }
        }
    }
    
    private var _dataDistricts : [Distric]?
    var dataDistricts : [Distric] {
        get {
            if _dataDistricts == nil {
                getDataDistric()
            }
            return _dataDistricts ?? []
        }
        set {
            _dataDistricts = newValue
        }
    }
    
    func getDataDistric() {
        _dataDistricts = []
        guard let pathDistrict = Bundle.main.path(forResource: "Districts", ofType: "plist") else {return }
        guard let dictDistrict = NSDictionary.init(contentsOfFile: pathDistrict) as? JSON else {return }
        guard let districtJson = dictDistrict["Districts"] as? [JSON] else {return }
        
        for districDictionary in districtJson {
            if let district = Distric(dictionary: districDictionary) {
                _dataDistricts?.append(district)
            }
        }
        
    }
    
    func getPlist(citiData : Int) -> [Distric] {
        getDataDistric()
        var datafilited : [Distric] = []
        for score in _dataDistricts ?? [] {
            if score.cityCode == citiData {
                datafilited.append(score)
            }
        }
        return datafilited
    }
}
