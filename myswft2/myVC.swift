//
//  myVC.swift
//  myswft2
//
//  Created by Jimmy D. Burrell on 7/16/14.
//  Copyright (c) 2014 Jimmy D. Burrell. All rights reserved.
//

import Cocoa

class myVC: NSViewController {
    @IBOutlet var mySButton : NSButton
    @IBOutlet var mySTextField : NSTextField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func mySBClicked(sender : AnyObject) {
        NSLog("click!")
        mySTextField.stringValue = "Hello world "
        var currentAge = myAge()
        mySTextField.stringValue = mySTextField.stringValue + currentAge.age.description
    }
    
}
