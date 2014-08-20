//
//  myVC.swift
//  myswft2
//
//  Created by Jimmy D. Burrell on 7/16/14.
//  Copyright (c) 2014 Jimmy D. Burrell. All rights reserved.
//

import Cocoa
import Foundation

class myVC: NSViewController {

    
    var fileContents: String = ""

    @IBOutlet var mySButton : NSButton?
    @IBOutlet var mySTextView: NSTextView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
    
    @IBAction func mySBClicked(sender : AnyObject) {
        NSLog("click!")
        let file="httpd-vhosts.conf"
        let dir = "/etc/apache2/extra/"
        let path = dir.stringByAppendingPathComponent(file)
        
        let text2 = String.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: nil)
        fileContents = text2!
        NSLog(fileContents)
        
        mySTextView?.insertText(fileContents)
        var currentAge = myAge()
        var vhConfigFile = ConfigFile()
        mySTextView?.insertText("My age = " + String(currentAge.age))
    }
    
}
