//
//  SystemPrintout.swift
//  Hypo-Mac
//
//  Created by sts on 6/16/26.
//  Copyright © 2026 sts. All rights reserved.
//

import Cocoa

class SystemPrintout: NSViewController {

    

    
    @IBOutlet weak var text: NSTextField!
//    @IBOutlet weak var serialNum: NSTextField!
//    @IBOutlet weak var totalSize: NSTextField!
//    @IBOutlet weak var freSpace: NSTextField!
//    @IBOutlet weak var bootcamp: NSTextField!
//    @IBOutlet weak var air: NSTextField!
//    @IBOutlet weak var wifiii: NSTextField!
//    @IBOutlet weak var timesince: NSTextField!
//    @IBOutlet weak var systemV: NSTextField!
    
    func airport() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "networksetup -getairportnetwork en0"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $2}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
        
    }
    func serial() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "system_profiler SPHardwareDataType | awk '/Serial/ {print $4}'"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $2}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
        
    }
    func mac() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "ifconfig en0 | awk '/ether/{print $2}'"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $2}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
    }
    func timeSinceBoot() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "sysctl -a | grep kern.boottime"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
    }
    func sysVersion() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "system_profiler SPSoftwareDataType | grep \"System Version\""]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let c = NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
        let index1 = c.startIndex.advancedBy(6)
        let index2 = index1.advancedBy(38)
        return c.substringWithRange(Range<String.Index>(start: index1, end:  index2))
    }
    func hardware() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "curl -s http://support-sp.apple.com/sp/product?cc=`system_profiler SPHardwareDataType | awk '/Serial/ {print $4}' | cut -c 9-` | sed 's|.*<configCode>\\(.*\\)</configCode>.*|\\1|'\nsysctl hw.model"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
    }
    func bootcamp() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "diskutil list | grep \"Microsoft\""]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
    }

    func timeSince() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "last reboot"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $6}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let c = NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
        let index1 = c.startIndex.advancedBy(53)
        let index2 = c.startIndex.advancedBy(35)
        return c.substringWithRange(Range<String.Index>(start: index2, end:  index1))
    }
    func wholeSz() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "diskutil info /dev/disk0"]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $7}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
    }
    func totalSz() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "diskutil info /dev/disk1 | grep \"Total Size\""]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $8}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
    }
    func freeSpace() -> String {
        let task = NSTask()
        task.launchPath = "/bin/bash"
        let mac:[String] = ["-c", "diskutil info /dev/disk1 | grep \"Free Space\""]
        task.arguments = mac
        // ifconfig en0 | awk '/ether/{print $9}'
        let pipe = NSPipe()
        task.standardOutput = pipe
        task.launch()
        task.waitUntilExit()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        return NSString(data: data,  encoding: NSUTF8StringEncoding) as! String
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        let words = (airport()+"MAC Address: "+mac()+sysVersion()+"Last Reboot: "+timeSince()+"\n"+" Serial:"+serial()+totalSz()+freeSpace());
        text.selectable = true
        text.stringValue = words
    }
    
}
