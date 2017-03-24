//
//  CalculatorViewController.swift
//  cpsc411-as3
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var field_price: UITextField!
    @IBOutlet weak var field_discount_flat: UITextField!
    @IBOutlet weak var field_discount_pct: UITextField!
    @IBOutlet weak var field_discount_pct_other: UITextField!
    @IBOutlet weak var field_tax: UITextField!
    @IBOutlet weak var lbl_original: UILabel!
    @IBOutlet weak var lbl_discounted: UILabel!
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        CalcData.shared.Calc()
        lbl_original.text = "$"+String(format: "%.2f", CalcData.shared.cost_original)
        lbl_discounted.text = "$"+String(format: "%.2f", CalcData.shared.cost_discounted)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field_price.text = String(CalcData.shared.price)
        field_discount_flat.text = String(CalcData.shared.discount_flat)
        field_discount_pct.text = String(CalcData.shared.discount_pct * 100)
        field_discount_pct_other.text = String(CalcData.shared.discount_pct_other * 100)
        field_tax.text = String(CalcData.shared.tax_pct * 100)
        lbl_original.text = "$"+String(format: "%.2f", CalcData.shared.cost_original)
        lbl_discounted.text = "$"+String(format: "%.2f", CalcData.shared.cost_discounted)
        // Do any additional setup after loading the view.
        //MARK: Make swipe gestures
        let swipeLeft:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target:self, action: #selector(handleSwipe))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        view.addGestureRecognizer(swipeLeft)
        //handleswipe is a function below
        //#selector() selects and executes that function
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//swipe function
    func handleSwipe(_ sender:UIGestureRecognizer)
    {
        self.performSegue(withIdentifier: "showResults", sender: self)
    }

    //enable unwinding other views
    @IBAction func unwindToCalc(segue:UIStoryboardSegue)
    {
        
    }
}
