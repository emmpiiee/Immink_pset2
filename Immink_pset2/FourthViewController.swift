//
//  FourthViewController.swift
//  Immink_pset2
//
//  Created by Emma Immink on 25-04-16.
//  Copyright © 2016 Emma Immink. All rights reserved.
//

import UIKit
import Foundation

class FourthViewController: UIViewController {
    // make textfield
    @IBOutlet weak var InputField: UITextView!
    
    // variable for filled in words adn type of story
    var wordString: [String] = []
    var idstory = 0
    var fileName = ""
    
    //pick story
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if idstory == 1 {
            fileName = "madlib0_simple"
        }
        else if idstory == 2 {
            fileName = "madlib1_tarzan"
        }
        else if idstory == 3 {
            fileName = "madlib2_university"
        }
        else if idstory == 4 {
            fileName = "madlib3_clothes"
        }
        else if idstory == 5 {
            fileName = "madlib4_dance"
        }
// read in file
        let fileLocation = NSBundle.mainBundle().pathForResource(fileName, ofType: "txt")
        let content = try? String(contentsOfFile: fileLocation!, encoding: NSUTF8StringEncoding)
        
        let myStory = Story (stream: content!, list: wordString)
        InputField.text = myStory.text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
// make class
class Story {
    private var text: String                    // Text of the story.
    private var placeholders: Array<String>     // List of placeholders to fill in.
    private var filledIn: Int                   // Numbers of placeholders that have been filled in.
    private var htmlMode: Bool                  // Set to true to surround placeholders with <b></b> tags.
    private var wordList: Array<String>
    
    /// Constructs a new Story reading its text from the given input stream.
    init(stream: String, list: Array<String>) {
        text = ""
        placeholders = Array<String>()
        filledIn = 0
        htmlMode = false
        wordList = list
        read(stream)
    }
    
    /// Returns story text.
    func toString() -> String {
        return text
    }
    
    /// Resets the story back to an empty initial state.
    func clear() {
        text = ""
        placeholders = Array<String>()
        filledIn = 0
    }
    
    /// Returns true if all placeholders have been filled in.
    func isFilledIn() -> Bool {
        return filledIn >= placeholders.count
    }
    
    /// Replaces the next unfilled placeholder with the given word.
    func fillInPlaceholder(word: String) {
        if (!isFilledIn()) {
            text = text.stringByReplacingOccurrencesOfString("<\(filledIn)>", withString: word)
            filledIn += 1
        }
    }
    
    /// Returns the next placeholder such as "adjective",
    /// or empty string if story is completely filled in already.
    func getNextPlaceholder() -> String {
        if (isFilledIn()) {
            return ""
        } else {
            return placeholders[filledIn]
        }
    }
    
    /// Returns total number of placeholders in the story.
    func getPlaceholderCount() -> Int {
        return placeholders.count;
    }
    
    /// Returns how many placeholders still need to be filled in.
    func getPlaceholderRemainingCount() -> Int {
        return placeholders.count - filledIn;
    }
    
    //// Reads initial story text from the given input stream.
    func read(stream: String) {
        
        let words = stream.characters.split{$0 == " " || $0 == "\r\n"}.map(String.init)
        
        for word in words {
            if (word.hasPrefix("<") && word.hasSuffix(">")) {
                // A placeholder; replace with e.g. "<0>" so I can find/replace it easily later
                // (make them bold so that they stand out!).
                if (htmlMode) {
                    text += " <b><\(wordList[placeholders.count])></b>"
                } else {
                    text += " \(wordList[placeholders.count])"
                }
                
                // "<plural-noun>" becomes "plural noun".
                let range = word.startIndex.advancedBy(1) ..< word.startIndex.advancedBy((word.characters.count - 1))
                let placeholder: String = word.substringWithRange(range).stringByReplacingOccurrencesOfString("-", withString: " ")
                placeholders.append(placeholder)
            } else {
                // A regular word; just concatenate.
                if (text.characters.count != 0) {
                    text += " ";
                }
                text += word;
            }
        }
    }
}