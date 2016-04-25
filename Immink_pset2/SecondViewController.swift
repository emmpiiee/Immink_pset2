//
//  SecondViewController.swift
//  Immink_pset2
//
//  Created by Emma Immink on 25-04-16.
//  Copyright © 2016 Emma Immink. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var storyid = 0

    @IBAction func SimpleWasClicked(sender: AnyObject) {
        storyid = 1
    }
    
    @IBAction func TarzanWasClicked(sender: AnyObject) {
        storyid = 2
    }
    
    @IBAction func UniversityWasClicked(sender: AnyObject) {
        storyid = 3
    }
    
    @IBAction func ClothesWasClicked(sender: AnyObject) {
        storyid = 4
    }
    @IBAction func DancingWasClicked(sender: AnyObject) {
        storyid = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let thirdViewController = segue.destinationViewController as! ThirdViewController
        
        thirdViewController.idstory = storyid
    
}
}

