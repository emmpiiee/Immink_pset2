//
//  ThirdViewController.swift
//  Immink_pset2
//
//  Created by Emma Immink on 25-04-16.
//  Copyright © 2016 Emma Immink. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var idstory = 0
    var AppendWord : String?
    
    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("idstory: \(idstory)")
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ButtonClicked(sender: AnyObject) {
        AppendWord = inputField.text
        print("\(AppendWord)")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let fourthViewController = segue.destinationViewController as! FourthViewController
        
        fourthViewController.wordString.append("\(AppendWord)")
        
        print("\(fourthViewController.wordString)")
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