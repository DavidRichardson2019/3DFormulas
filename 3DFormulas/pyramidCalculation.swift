//
//  pyramidCalculation.swift
//  3DFormulas
//
//  Created by David Richardson on 4/22/16.
//  Copyright © 2016 DailyDev. All rights reserved.
//

import UIKit

class pyramidCalculation: UIViewController {
    @IBOutlet weak var baseLength: UITextField!
    @IBOutlet weak var baseWidth: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var solve: UIButton!
    @IBOutlet weak var volume: UILabel!
    @IBOutlet weak var surfaceArea: UILabel!
    @IBOutlet weak var lateralSurfaceArea: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        home.layer.cornerRadius = 5
        home.layer.borderWidth = 1
        home.layer.borderColor = UIColor.blackColor().CGColor
        solve.layer.cornerRadius = 5
        solve.layer.borderWidth = 1
        solve.layer.borderColor = UIColor.blackColor().CGColor
    }
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    @IBAction func solve(sender: UIButton) {
        let baseLengthFromUser = Double(baseLength.text!)
        let baseWidthFromUser = Double(baseLength.text!)
        let heightFromUser = Double(height.text!)
        volumeSolve(baseLengthFromUser!, w: baseWidthFromUser!, h: heightFromUser!)
        surfaceAreaSolve(baseLengthFromUser!, w: baseWidthFromUser!, h: heightFromUser!)
        lateralSurfaceAreaSolve(baseLengthFromUser!, w: baseWidthFromUser!, h: heightFromUser!)
        
    }
    func volumeSolve(l: Double, w: Double, h: Double){
        let step1 = l * w * h
        volume.text = "Volume: \(String(step1))"
    }
    func surfaceAreaSolve(l: Double, w: Double, h: Double){
        let step1 = l * w
        let step2 = h * l
        let step3 = w * h
        let step4 = step1 + step2 + step3
        let step5 = 2 * step4
        surfaceArea.text = "Surface Area: \(String(step5))"
    }
    func lateralSurfaceAreaSolve(l: Double, w: Double, h: Double){
        let step1 = pow(l, 2) + pow(w, 2)
        let step2 = step1 * 2
        lateralSurfaceArea.text = "Surface Area: \(String(step2))"
    }
}
