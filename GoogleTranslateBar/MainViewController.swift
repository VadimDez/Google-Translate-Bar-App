//
//  MainViewController.swift
//  GoogleTranslateBar
//
//  Created by Vadim Dez on 24/12/2016.
//  Copyright © 2016 Vadim Dez. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    @IBOutlet weak var languagesFrom: NSPopUpButton!
    @IBOutlet weak var languagesTo: NSPopUpButton!
    @IBOutlet weak var translateButton: NSButton!
    @IBOutlet weak var textFieldToTranslate: NSTextField!
    @IBOutlet weak var progressLabel: NSTextField!
    @IBOutlet weak var translatedTextField: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.progressLabel.stringValue = ""
        
        self.setLanguages()
    }
    
    func setLanguages() -> Void {
        self.languagesFrom.removeAllItems()
        self.languagesTo.removeAllItems()
        
        languages.forEach { (name, value) in
            self.languagesFrom.addItem(withTitle: name)
            self.languagesTo.addItem(withTitle: name)
        }
        
        self.languagesFrom.select(self.languagesFrom.item(at: 1))
        self.languagesTo.select(self.languagesTo.item(at: 0))
    }
    
    @IBAction func onTranslate(_ sender: Any) {
        self.progressLabel.stringValue = "Translating..."
        
        self.translatedTextField.stringValue = self.textFieldToTranslate.stringValue
        
        self.progressLabel.stringValue = ""
    }
}
