//
//  CalculateViewController.swift
//  w2SpecialCalculator
//
//  Created by Kuga Kugaraja on 2017-09-20.
//  Copyright © 2017 Kuga Kugaraja. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //define variables
    //':'extends UILabel
    @IBOutlet weak var lblDisplay : UILabel?
    @IBOutlet weak var swTrig : UISwitch?
    
    var strDisplay : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
