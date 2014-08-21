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

    
//    var fileContents: String = ""

    @IBOutlet var mySButton : NSButton?
    @IBOutlet var mySTextView: NSTextView?
    @IBOutlet weak var fileToReadTextField: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
    }
    
    func displayFile(path: String) {
        // read the file at path
        let text2 = String.stringWithContentsOfFile(path, encoding: NSUTF8StringEncoding, error: nil)
        // display it in the text view
        mySTextView?.insertText(text2!)
    }
    
    @IBAction func mySBClicked(sender : AnyObject) {
        // get the file to be read
        fileToReadTextField.stringValue = getFileToRead()
        // read it and display
        displayFile(fileToReadTextField.stringValue!)
    }
    
    func getFileToRead() -> String {
        
        var url: String = ""
        
        // Create the File Open Dialog class.
        let openDlg: NSOpenPanel = NSOpenPanel()
        
        // Enable the selection of files in the dialog.
        openDlg.canChooseFiles = true
        
        // Multiple files not allowed
        openDlg.allowsMultipleSelection = false
        
        // Can't select a directory
        openDlg.canChooseDirectories = false
        
        // Display the dialog. If the OK button was pressed, process the files.
        if ( openDlg.runModal() == NSOKButton )
        {
            let urls: Array = openDlg.URLs
            url = urls[0].path!!
            // NSLog(url);
        }
        return url
    }
    
}
