//
//  ViewController.swift
//  shoeConverter
//
//  Created by terry atkins on 10/03/2015.
//  Copyright (c) 2015 terry atkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextFeild: UITextField!
    
    @IBOutlet weak var womensShoeSizeLabel: UILabel!
    @IBOutlet weak var showConvertSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeConvertLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let shoeSizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.hidden = false
        showConvertSizeLabel.hidden = false
        
        mensConvertedShoeSizeLabel.text = "\(shoeSizeFromTextField + conversionConstant)"
        mensShoeSizeTextField.text = ""
        mensShoeSizeTextField.resignFirstResponder()
        
    }
    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        let shoeSizeFromTextField = Double((womensShoeSizeTextFeild.text as NSString).doubleValue)
        let conversionConstant = 30.5
        
        womensShoeSizeLabel.hidden = false
        womensShoeSizeConvertLabel.hidden = false
        
        womensShoeSizeLabel.text = "\(shoeSizeFromTextField + conversionConstant)"
        womensShoeSizeTextFeild.text = ""
        womensShoeSizeTextFeild.resignFirstResponder()
    }

}

