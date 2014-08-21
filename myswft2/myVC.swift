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
    
    func displayFile(path: String) {
        // NSLog("click!")
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
    
    @IBAction func mySBClicked(sender : AnyObject) {
        
        // Create the File Open Dialog class.
        let openDlg: NSOpenPanel = NSOpenPanel()
        
        // Enable the selection of files in the dialog.
        //[openDlg setCanChooseFiles:YES];
        openDlg.canChooseFiles = true
        
        // Multiple files not allowed
        //[openDlg setAllowsMultipleSelection:NO];
        openDlg.allowsMultipleSelection = false
        
        // Can't select a directory
        //[openDlg setCanChooseDirectories:NO];
        openDlg.canChooseDirectories = false
        
        // Display the dialog. If the OK button was pressed,
        // process the files.
        if ( openDlg.runModal() == NSOKButton )
        {
            // Get an array containing the full filenames of all
            // files and directories selected.
            //NSArray* urls = [openDlg URLs];
            let urls: Array = openDlg.URLs
            
            var url: String = urls[0].absoluteString!!
            NSLog(url);
        }
        
    }
    
}
