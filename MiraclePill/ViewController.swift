//
//  ViewController.swift
//  MiraclePill
//
//  Created by Mark Price on 7/10/16.
//  Copyright © 2016 Devslopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var view1: UIView!
    @IBOutlet weak var pillImage: UIImageView!
    @IBOutlet weak var pillTxt: UILabel!
    @IBOutlet weak var pillCost: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullLbl: UILabel!
    @IBOutlet weak var fullLbltxt: UITextField!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var addressLblTxt: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet var cityLblTxt: UIView!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryLblTxt: UITextField!
    @IBOutlet weak var zipcodeLbl: UILabel!
    @IBOutlet weak var zipcodeLblTxt: UITextField!
    @IBOutlet weak var buynowBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var city1: UITextField!

    
    let states = ["Alaska","Arkansas", "Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryLblTxt.isHidden = true
        zipcodeLbl.isHidden = true
        zipcodeLblTxt.isHidden = true
        buynowBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState()) //UIControlState.normal
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryLblTxt.isHidden = false
        zipcodeLbl.isHidden = false
        zipcodeLblTxt.isHidden = false
        buynowBtn.isHidden = false
    }

    @IBAction func buynowBtnPressed(_ sender: Any) {
        pillImage.isHidden = true
        pillTxt.isHidden = true
        pillCost.isHidden = true
        divider.isHidden = true
        fullLbl.isHidden = true
        fullLbltxt.isHidden = true
        addressLbl.isHidden = true
        addressLblTxt.isHidden = true
        cityLbl.isHidden = true
        cityLblTxt.isHidden = true
        statePickerBtn.isHidden = true
        countryLbl.isHidden = true
        zipcodeLbl.isHidden = true
        buynowBtn.isHidden = true
        countryLblTxt.isHidden = true
        zipcodeLblTxt.isHidden = true
        stateLbl.isHidden = true
        city1.isHidden = true
        successImg.isHidden = false
        view1.isHidden = false
    }
}

