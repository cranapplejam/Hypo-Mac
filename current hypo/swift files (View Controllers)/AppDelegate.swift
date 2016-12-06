//
//  AppDelegate.swift
//  Hypo-Mac
//
//  Created by sts on 6/16/16.
//  Copyright © 2016 sts. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    //Added this method so that the app will quit when the main window is closed.
    //This prevents the user from having to click on icon on the dock or from the menu bar in order to quit the app.
    func applicationShouldTerminateAfterLastWindowClosed(sender: NSApplication) -> Bool {
        return true;
    }

}

