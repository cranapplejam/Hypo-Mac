//
//  Network.swift
//  Hypo-Mac
//
//  Created by sts on 7/14/16.
//  Copyright © 2016 sts. All rights reserved.
//

import Cocoa

class Network: NSViewController {
    let task = NSTask()
    var workSpace : NSWorkspace = NSWorkspace()
    @IBAction func networkPref(sender: AnyObject) {
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /System/Library/PreferencePanes/Network.prefPane/"]
        task.launch()
        task.waitUntilExit()
    }
    @IBOutlet weak var guestON: NSButton!
    @IBOutlet weak var podsON: NSButton!
    @IBOutlet weak var unpluggedON: NSButton!
    @IBOutlet weak var LASTRESORT: NSButton!
    @IBAction func rmNetworks(sender: AnyObject) {
        let task2 = NSTask()
        task.launchPath = "/bin/bash"
        task2.launchPath = "/bin/bash"
        if guestON.state == NSOnState {
            task.arguments = ["-c", "sudo networksetup -removepreferredwirelessnetwork en0 EmoryGuest"]
            task.launch()
            task.waitUntilExit()
        }
        if podsON.state == NSOnState {
            task.arguments = ["-c", "sudo networksetup -removepreferredwirelessnetwork en0 STS-Pod2"]
            task.launch()
            task.waitUntilExit()
            task.arguments = ["-c", "sudo networksetup -removepreferredwirelessnetwork en0 STS-Pod3"]
            task.launch()
            task.waitUntilExit()
        }
        if unpluggedON.state == NSOnState {
            task.arguments = ["-c", "sudo networksetup -removepreferredwirelessnetwork en0 EmoryUnplugged"]
            task.launch()
            task.waitUntilExit()
        }
        if LASTRESORT.state == NSOnState {
            
            task.arguments = ["-c", "sudo networksetup -removeallpreferredwirelessnetworks en0"]
            task.launch()
            task.waitUntilExit()
        }
        
    }
    
    @IBAction func mc_install(sender: AnyObject) {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Emory McAfee Installer.pkg\""]
        task.launch()
        task.waitUntilExit()
    }
    @IBAction func brad_install(sender: AnyObject) {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Bradford Persistent Agent.pkg\""]
        task.launch()
        task.waitUntilExit()
    }
    @IBAction func brad_unin(sender: AnyObject) {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Bradford Persistent Agent Uninstaller.app\""]
        task.launch()
        task.waitUntilExit()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
