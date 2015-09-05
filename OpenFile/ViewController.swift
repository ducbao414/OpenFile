//
//  ViewController.swift
//  OpenFile
//
//  Created by bmbhh on 9/5/15.
//  Copyright (c) 2015 bmbhh. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func choosingFile(sender: AnyObject) {
        var openPanel = NSOpenPanel()
        /*
        openPanel.allowedFileTypes = ["css","html","pdf","png"]
        openPanel.canChooseDirectories = true
        openPanel.resolvesAliases = true
        openPanel.allowsMultipleSelection = true
        */
        openPanel.title = "Choose a file"
        openPanel.beginWithCompletionHandler({(result:Int) in
            if(result == NSFileHandlingPanelOKButton)
            {
                var fileURL = openPanel.URL!
                println(fileURL)
                //do something with the selected file. Its url = fileURL
            }
        })
    }

}

