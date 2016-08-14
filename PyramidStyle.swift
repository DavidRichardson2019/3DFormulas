//
//  PyramidStyle.swift
//  3DFormulas
//
//  Created by David Richardson on 4/26/16.
//  Copyright © 2016 DailyDev. All rights reserved.
//

import UIKit

class PyramidStyle: UIViewController {

    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var solvve: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        home.layer.cornerRadius = 5
        home.layer.borderWidth = 1
        home.layer.borderColor = UIColor.blackColor().CGColor
        solvve.layer.cornerRadius = 5
        solvve.layer.borderWidth = 1
        solvve.layer.borderColor = UIColor.blackColor().CGColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
