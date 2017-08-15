//
//  ViewController.swift
//  PickerView-16-07-2017
//
//  Created by Soeng Saravit on 7/16/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var showDayLabel: UILabel!
    
//    var days = ["Monday", "Tuesday","Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    var data = [
        ["1","2","3","4","5"],
        ["A","B","C"],
        ["a","b","c","d"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return data.count
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data[component].count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.showDayLabel.text = data[component][row]
     //   self.view.endEditing(true)
    }
    
    
}

