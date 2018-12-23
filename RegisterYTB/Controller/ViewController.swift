//
//  ViewController.swift
//  RegisterYTB
//
//  Created by daicudu on 12/20/18.
//  Copyright © 2018 daicudu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet var classButton: [UIButton]!
    
    
    @IBAction func button(_ sender: UIButton) {
        for button in classButton {
            button.isSelected = false
        }
        sender.isSelected = true
        UserDefaults.standard.set(sender.currentTitle, forKey: "gender")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        pickerView.selectRow(18, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    let numbers = Array(1...100)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(numbers[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedValue = pickerView.selectedRow(inComponent: 0)
        UserDefaults.standard.set(selectedValue, forKey: "age")
    }
    
    @IBAction func register(_ sender: UIButton) {
        if nameTextField.text != "" {
            UserDefaults.standard.set(nameTextField.text, forKey: "name")
        }
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
