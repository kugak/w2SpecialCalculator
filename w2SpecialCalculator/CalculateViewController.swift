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
    
    //factorial method (pass in number in and return back -> int)
    func calcFactorial (number : Int) -> Int {
        
        var num = number
        var ans : Int = 1
        
        while num > 1 {
            ans *= num
            //-- and ++ has been removed
            num -= 1
        }
        
        return ans
    }
    
    //even handler for calculations
    @IBAction func actionButtons (sender : UIButton) {
        var ans = 0.0
        let num = Double(strDisplay!)
        
        switch sender.tag {
            //factorial tag id
        case 13:
            ans = Double(calcFactorial(number: Int(num!)))
            break
            
            //kg to lbs
        case 14:
            ans = num! / 2.2
            break
            
            //km to miles
        case 15:
            ans = num! / 1.6
            break
            
            //year to seconds
        case 16:
            ans = num! * 365 * 24 * 60 * 60
            break
            
            //clear
        case -2:
            strDisplay = "0"
            break
            
            //decimal
        case -1:
            strDisplay! += "."
        
        default:
            break
        }
        
        //update display
        strDisplay = String(ans)
        updateLabel()
    }
    
    //event handler updates label based on tag value
    @IBAction func numButtons(sender : UIButton) {
        
        //based on tag value set the label
        if sender.tag >= 0 && sender.tag < 10{
            strDisplay = strDisplay?.appendingFormat("%d", sender.tag)
        }
        updateLabel()
    }
    
    //method to update label
    func updateLabel() {
        //? is to account for nil value term called "optional"
        lblDisplay?.text = strDisplay
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //initialize label
        strDisplay = "0"
        updateLabel();
        
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
