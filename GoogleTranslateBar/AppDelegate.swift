//
//  AppDelegate.swift
//  GoogleTranslateBar
//
//  Created by Vadim Dez on 23/12/2016.
//  Copyright © 2016 Vadim Dez. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let statusItem = NSStatusBar.system().statusItem(withLength: NSVariableStatusItemLength)
    let popover = NSPopover()

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = self.statusItem.button {
            button.image = NSImage(named: "barIcon")
            button.image?.isTemplate = true
            
            button.action = #selector(self.togglePopover(sender:))
        }
        
        self.popover.contentViewController = MainViewController(nibName: "MainViewController", bundle: nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func showPopover(sender: AnyObject?) {
        if let button = statusItem.button {
            self.popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
        }
    }
    
    func closePopover(sender: AnyObject?) {
        popover.performClose(sender)
    }
    
    func togglePopover(sender: AnyObject?) {
        if popover.isShown {
            closePopover(sender: sender)
        } else {
            showPopover(sender: sender)
        }
    }
}

