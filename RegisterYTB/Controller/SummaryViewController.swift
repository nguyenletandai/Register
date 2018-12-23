//
//  SummaryViewController.swift
//  RegisterYTB
//
//  Created by daicudu on 12/20/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var defaultCiti: UILabel!
    @IBOutlet weak var defaultDictrict: UILabel!
    @IBOutlet weak var defaultName: UILabel!
    @IBOutlet weak var defaultGender: UILabel!
    @IBOutlet weak var defaultAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        // Do any additional setup after loading the view.
    }
    
    func configure() {
         let nameCity = UserDefaults.standard.string(forKey: "city")
        let nameDictrict = UserDefaults.standard.string(forKey: "Distric")
        let nameGender = UserDefaults.standard.string(forKey: "gender")
        let nameAge = UserDefaults.standard.string(forKey: "age")
        let nameText = UserDefaults.standard.string(forKey: "name")
            defaultCiti.text = nameCity
            defaultAge.text = nameAge
            defaultDictrict.text = nameDictrict
            defaultGender.text = nameGender
            defaultName.text = nameText
            
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
