//
//  ResultsViewController.swift
//  cpsc411-as3
//
//  Created by CampusUser on 2/27/17.
//  Copyright © 2017 pdbarnes. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //MARK: Make swipe gestures
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target:self, action: #selector(handleSwipe))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        view.addGestureRecognizer(swipeRight)
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
        self.performSegue(withIdentifier: "unwindToCalc", sender: self)
    }
    
    //unwinding to calc
    //this is betcause it will keep adding to the top of the "stack" of where we are. like dir/../dir/../dir/.. and so on

}
