//
//  ViewController.swift
//  HexColorComplement
//
//  Created by Steven Lipton on 2/9/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit

class ViewController:UIViewController{
    
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    
    //MARK: - Actions
    @IBAction func goButton(_ sender: UIButton) {
        textField.resignFirstResponder()
        updateColor(colorString: textField.text!)
    }
    
    @IBAction func newColor(_ sender: UIButton) {
        textField.becomeFirstResponder()
    }
    

    func updateColor(colorString:String){
        topButton.backgroundColor = .red
        topButton.tintColor = .cyan
        bottomButton.backgroundColor = .cyan
        bottomButton.tintColor = .red
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColor(colorString:"ffff00")
    }
}

