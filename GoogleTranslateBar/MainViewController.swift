//
//  MainViewController.swift
//  GoogleTranslateBar
//
//  Created by Vadim Dez on 24/12/2016.
//  Copyright © 2016 Vadim Dez. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    @IBOutlet weak var sourceLanguages: NSPopUpButton!
    @IBOutlet weak var targetLanguages: NSPopUpButton!
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
        self.sourceLanguages.removeAllItems()
        self.targetLanguages.removeAllItems()
        
        languages.forEach { (name, value) in
            self.sourceLanguages.addItem(withTitle: name)
            self.targetLanguages.addItem(withTitle: name)
        }
        
        self.sourceLanguages.select(self.sourceLanguages.item(at: 1))
        self.targetLanguages.select(self.targetLanguages.item(at: 0))
    }
    
    @IBAction func onTranslate(_ sender: Any) {
        self.progressLabel.stringValue = "Translating..."
        
        self.translatedTextField.stringValue = self.textFieldToTranslate.stringValue
        
        self.progressLabel.stringValue = ""
    }
}
