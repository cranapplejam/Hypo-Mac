//
//  anti-virus.swift
//  Hypo-Mac
//
//  Created by sts on 7/7/16.
//  Copyright © 2016 sts. All rights reserved.
//

import Cocoa
var workSpac : NSWorkspace = NSWorkspace()
var path = String()







var fileManager: NSFileManager = NSFileManager()
class anti_virus: NSViewController {
    let task = NSTask()
    @IBAction func sophos9_unin(sender: AnyObject) {
        let urlA  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Remove Sophos AV - VERSION 9")!)
        workSpace.openURL(urlA)
    }
    @IBAction func sophos8_unin(sender: AnyObject) {
        let urlA  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Sophos Remove - VERSION 8 ONLY")!)
        workSpace.openURL(urlA)
    }
    @IBAction func mcretailunin(sender: AnyObject) {
        let task1 : NSTask = NSTask()
        task1.resume()
        task1.launchPath = "/bin/bash"
        task1.arguments = ["-c", "/Volumes/STS*/Mac_Stimpak/\"Mcafee Security Uninstall - RETAIL ONLY.scpt\""]
        task1.launch()
        task1.waitUntilExit()
        task1.suspend()

    }
    @IBAction func mc_unin(sender: AnyObject) {
        let task2 : NSTask = NSTask()
        task2.resume()
        task2.launchPath = "/bin/bash"
        task2.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Remove McAfee EPM.pkg\""]
        task2.launch()
        task2.waitUntilExit()
        task2.suspend()
    }
    
    
    @IBAction func kapersky_unin(sender: AnyObject) {
        let task3 : NSTask = NSTask()
        task3.resume()
        task3.launchPath = "/bin/bash"
        task3.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Kaspersky Anti-Virus Uninstaller.app\""]
        task3.launch()
        task3.waitUntilExit()
        task3.terminate()
        
        
    }
    @IBAction func mc_install(sender: AnyObject) {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        task.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Emory McAfee Installer.pkg\""]
        task.launch()
        task.waitUntilExit()
    }
    @IBAction func syman_unin(sender: AnyObject) {
        let urlS  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Symantec Uninstaller")!)
        workSpace.openURL(urlS)
    }
    @IBAction func syman_fileRM(sender: AnyObject) {
        let task4 : NSTask = NSTask()
        task4.launchPath = "/bin/bash"
        task4.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/RemoveSymantecMacFiles.command"]
        task4.launch()
        task4.waitUntilExit()
    }
    @IBAction func mac_prem_unin(sender: AnyObject) {
        let task5 : NSTask = NSTask()
        task5.launchPath = "/bin/bash"
        task5.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"Mac Premium Bundle X8.app\""]
        task5.launch()
        task5.waitUntilExit()
    }
    
    @IBAction func trendTitan_unin(sender: AnyObject) {
        let urlT  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Uninstall Trend Micro Internet Security.app")!)
        workSpace.openURL(urlT)
    }
    @IBAction func adware(sender: AnyObject) {
        let urlJ  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("AdwareMedic")!)
        workSpace.openURL(urlJ)
    }
    @IBAction func eset_unin(sender: AnyObject) {
        let task6 : NSTask = NSTask()
        task6.launchPath = "/bin/bash"
        task6.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"ESET Uninstaller.app\""]
        task6.launch()
        task6.waitUntilExit()    }
    @IBAction func bitdefender_unin(sender: AnyObject) {
       let urlZ  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("BitdefenderforMacUninstaller.app")!)
        workSpace.openURL(urlZ)
    }
    @IBAction func malwareBytes(sender: AnyObject) {
        let urlB  = NSURL.fileURLWithPath(workSpace.fullPathForApplication("Malwarebytes Anti-Malware")!)
        workSpace.openURL(urlB)
    }
    @IBAction func clam_unin(sender: AnyObject) {
        let task7 : NSTask = NSTask()
        task7.launchPath = "/bin/bash"
        task7.arguments = ["-c", "open /Volumes/STS*/Mac_Stimpak/\"ClamXav_2.8.4.dmg\""]
        task7.launch()
        task7.waitUntilExit()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
