//
//  ViewController.swift
//  test
//
//  Created by Tsubasa on 2020/11/30.
//

import Cocoa
//let urlString: String = "https://www.tsubasakato.com"
//let url = URL(string: urlString)

class ViewController: NSViewController {
    
    @IBOutlet weak var button: NSButton!
    @IBOutlet weak var textURL: NSTextField!
    @IBOutlet var HTMLView: NSTextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func button_click(_ sender: Any) {
        //Function for getting textURL's string Value
        let myURLString = textURL.stringValue
        guard let myURL = URL(string: myURLString) else {
            print("Error: \(myURLString) doesn't seem to be a valid URL")
            return
        }

        do {
            let myHTMLString = try String(contentsOf: myURL, encoding: .ascii)
            print("HTML : \(myHTMLString)")
            //et destinationText = myHTMLString
            //HTMLView.documentView!.insertText(destinationText)
            
            //HTMLView.documentView!.insertText(myHTMLString)
            HTMLView.string = ""
            HTMLView.string = myHTMLString
            //let attr = NSAttributedString(string: myURLString)

            //text.appendAttributedString(attr)

        } catch let error {
            print("Error: \(error)")
        }
        
        
    }
    
   
    

}

