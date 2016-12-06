//
//  SystemButtons.swift
//  Hypo-Mac
//
//  Created by sts on 6/16/16.
//  Copyright © 2016 sts. All rights reserved.
//

import Cocoa
var workSpace : NSWorkspace = NSWorkspace()

var url2  = NSURL(string: "x-apple.systempreferences:com.apple.preference")
class SystemButtons:  NSViewController {
    

    @IBAction func diskUtil(sender: AnyObject) {
        let url1  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Disk Utility")!)
        workSpace.openURL(url1)
    }
    @IBAction func sysPref(sender: AnyObject) {
        workSpace.openURL(url2!)
    }
    @IBAction func keychain(sender: AnyObject) {
        let url3  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Keychain Access")!)
        workSpace.openURL(url3)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
