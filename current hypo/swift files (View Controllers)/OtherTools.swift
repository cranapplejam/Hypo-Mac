//
//  OtherTools.swift
//  Hypo-Mac
//
//  Created by sts on 7/14/16.
//  Copyright © 2016 sts. All rights reserved.
//

import Cocoa

class OtherTools: NSViewController {
    let process = NSProcessInfo()
    var task1 = NSTask()
    var task2 = NSTask()
    var task3 = NSTask()
    var task4 = NSTask()
    var task5 = NSTask()
    var task6 = NSTask()
    var task7 = NSTask()
    var task8 = NSTask()
    var task9 = NSTask()
    var task10 = NSTask()
    var task11 = NSTask()
    var task12 = NSTask()
    @IBAction func MacTracker(sender: AnyObject) {
        let urlM  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Mactracker")!)
        workSpace.openURL(urlM)
    }
    @IBAction func OnyX(sender: AnyObject) {
        NSWorkspace.sharedWorkspace().openURL(NSURL(string: "http://www.titanium.free.fr/onyx.html")!)
    }
    @IBAction func print_unin(sender: AnyObject) {
        task1.launchPath = "/bin/bash"
        task1.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Remove-Popups-MacOS.pkg\""]
        task1.launch()
        task1.waitUntilExit()
    }
    @IBAction func print_install(sender: AnyObject) {
        task2.launchPath = "/bin/bash"
        task2.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/EaglePrint.pkg"]
        task2.launch()
        task2.waitUntilExit()
    }
    @IBAction func permissions(sender: AnyObject) {
        task12.launchPath = "/bin/bash"
        task12.arguments = ["-c", "diskutil repairPermissions /"]
        task12.launch()
        task12.waitUntilExit()
    }
    @IBAction func diskInventoryX(sender: AnyObject) {
        task3.launchPath = "/bin/bash"
        task3.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Disk Inventory X.app\""]
        task3.launch()
        task3.waitUntilExit()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
