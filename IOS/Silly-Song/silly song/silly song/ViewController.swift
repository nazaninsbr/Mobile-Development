//
//  ViewController.swift
//  silly song
//
//  Created by Apple on 9/30/17.
//  Copyright © 2017 Nazanin sabri. All rights reserved.
//

import UIKit
import Foundation


func shortNameForName(name:String)->String{
    var changedName = name
    changedName.remove(at:changedName.startIndex)
    return changedName
}



func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    
    let shortName = shortNameForName(name: fullName)
    
    let lyrics = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    
    return lyrics
}


var template = "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME> \nBanana Fana Fo F<SHORT_NAME> \nMe My Mo M<SHORT_NAME> \n<FULL_NAME>"


class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricField: UITextView!
    
    
    
    @IBAction func reset(_ sender: Any) {
        nameField.text = ""
        lyricField.text = "Enter Your Name"
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        let name = nameField.text
        let lyrics = lyricsForName(lyricsTemplate: template, fullName: name!)
        lyricField.text = lyrics
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

