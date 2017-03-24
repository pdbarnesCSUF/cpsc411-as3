//
//  CalculatorViewController.swift
//  cpsc411-as3
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
