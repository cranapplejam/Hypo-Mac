//
//  ViewController.swift
//  Hypo-Mac
//
//  Created by sts on 6/16/16.
//  Copyright © 2016 sts. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.wantsLayer = true
        self.view.layer?.backgroundColor = NSColor.blackColor().CGColor
        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

