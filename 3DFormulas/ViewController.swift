//
//  ViewController.swift
//  3DFormulas
//
//  Created by senior on 4/20/16.
//  Copyright © 2016 DailyDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        button1.layer.cornerRadius = 5
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.blackColor().CGColor
        button2.layer.cornerRadius = 5
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor.blackColor().CGColor
        button3.layer.cornerRadius = 5
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.blackColor().CGColor
        button4.layer.cornerRadius = 5
        button4.layer.borderWidth = 1
        button4.layer.borderColor = UIColor.blackColor().CGColor
        button5.layer.cornerRadius = 5
        button5.layer.borderWidth = 1
        button5.layer.borderColor = UIColor.blackColor().CGColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }


}

