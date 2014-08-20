//
//  File.swift
//  myswft2
//
//  Created by Jimmy D. Burrell on 7/16/14.
//  Copyright (c) 2014 Jimmy D. Burrell. All rights reserved.
//

import Foundation
import Cocoa

class myAge {
    var age = 54
}

class ConfigFile {
    

    func getConfigFile() {
        
        var text: String? = String.stringWithContentsOfFile("/etc/apache2/extra/httpd-vhosts.conf", encoding: NSUTF8StringEncoding, error: nil)

    }
    
}