//
//  Register_ViewController.swift
//  SwiftViper
//
//  Created by Abel Sánchez Custodio on 22/3/17.
//  Copyright (c) 2017 TalentoMOBILE. All rights reserved.
//

import UIKit

class Register_ViewController: Lib_ViewController {
    
    @IBOutlet weak var countryTextField: UITextField!
    
    var presenter: Register_Presenter_Protocol!
    
    private var _countries: [String]!
    var countries: [String] {
        get {
            return _countries
        }
        set {
            _countries = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Register"
        
        presenter.viewIsReady()
        
        let pickerView = UIPickerView()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        countryTextField.inputView = pickerView
        countryTextField.tintColor = UIColor.clear
    }
    
    // MARK: - Actions
    
    func btnCloseTapped(_ sender: Any) {
        presenter.btnCloseTapped()
    }
    
    @IBAction func btnCountryTapped(_ sender: Any) {
        countryTextField.becomeFirstResponder()
    }
}

extension Register_ViewController: Register_ViewController_Protocol {
    
    func printCloseButton() {
        let image = #imageLiteral(resourceName: "close_image").imageWithSize(size: CGSize.init(width: 30.0, height: 30.0))
        
        let bar_button_item = UIBarButtonItem.init(image: image, style: .plain, target: self, action: #selector(btnCloseTapped))
        
        bar_button_item.tintColor = UIColor.white
        
        navigationItem.rightBarButtonItem = bar_button_item
    }
    
}

extension Register_ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
}

extension Register_ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let country = countries[row]
        
        countryTextField.text = country
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let country = countries[row]
        
        return country
    }
}
