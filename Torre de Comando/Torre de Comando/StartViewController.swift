//
//  StartViewController.swift
//  Torre de Comando
//
//  Created by Jordana Mecler on 04/04/16.
//  Copyright © 2016 Matheus Falcão. All rights reserved.
//

import Cocoa

class StartViewController: NSViewController {
    
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func buttonPressed(sender: NSButton) {
        presentViewControllerAsModalWindow(MainViewController())
    }

    
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
            
        }
    }
}