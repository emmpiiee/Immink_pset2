//
//  Third4ViewController.swift
//  Immink_pset2
//
//  Created by Emma Immink on 26-04-16.
//  Copyright © 2016 Emma Immink. All rights reserved.
//

import UIKit

class Third4ViewController: UIViewController {
    
    // make variables for storage
    var Word1 : String?
    var Word2 : String?
    var Word3 : String?
    var Word4 : String?
    var Word5 : String?
    var Word6 : String?
    var Word7 : String?
    var Word8 : String?
    var Word9 : String?
    var Word10 : String?
    var Word11 : String?
    var Word12 : String?
    var Word13 : String?
    var Word14 : String?
    
    // make texfield inputs
    @IBOutlet weak var AppendWord1: UITextField!
    @IBOutlet weak var AppendWord2: UITextField!
    @IBOutlet weak var AppendWord3: UITextField!
    @IBOutlet weak var AppendWord4: UITextField!
    @IBOutlet weak var AppendWord5: UITextField!
    @IBOutlet weak var AppendWord6: UITextField!
    @IBOutlet weak var AppendWord7: UITextField!
    @IBOutlet weak var AppendWord8: UITextField!
    @IBOutlet weak var AppendWord9: UITextField!
    @IBOutlet weak var AppendWord10: UITextField!
    @IBOutlet weak var AppendWord11: UITextField!
    @IBOutlet weak var AppendWord12: UITextField!
    @IBOutlet weak var AppendWord13: UITextField!
    @IBOutlet weak var AppendWord14: UITextField!
    // make array and pick story
    var AppendString: Array<String> = []
    var idstory = 4

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //if button clicked attach words to variables
    @IBAction func ButtonClicked(sender: AnyObject) {
        Word1 = AppendWord1.text
        Word2 = AppendWord2.text
        Word3 = AppendWord3.text
        Word4 = AppendWord4.text
        Word5 = AppendWord5.text
        Word6 = AppendWord6.text
        Word7 = AppendWord7.text
        Word8 = AppendWord8.text
        Word9 = AppendWord9.text
        Word10 = AppendWord10.text
        Word11 = AppendWord11.text
        Word12 = AppendWord12.text
        Word13 = AppendWord13.text
        Word14 = AppendWord14.text
    }

    // append variables to array string
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let fourthViewController = segue.destinationViewController as! FourthViewController
        
        fourthViewController.wordString.append("\(Word1!)")
        fourthViewController.wordString.append("\(Word2!)")
        fourthViewController.wordString.append("\(Word3!)")
        fourthViewController.wordString.append("\(Word4!)")
        fourthViewController.wordString.append("\(Word5!)")
        fourthViewController.wordString.append("\(Word6!)")
        fourthViewController.wordString.append("\(Word7!)")
        fourthViewController.wordString.append("\(Word8!)")
        fourthViewController.wordString.append("\(Word9!)")
        fourthViewController.wordString.append("\(Word10!)")
        fourthViewController.wordString.append("\(Word11!)")
        fourthViewController.wordString.append("\(Word12!)")
        fourthViewController.wordString.append("\(Word13!)")
        fourthViewController.wordString.append("\(Word14!)")
        
        fourthViewController.idstory = idstory
        
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
