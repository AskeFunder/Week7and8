//
//  ViewController.swift
//  Week7And8
//
//  Created by Fredsta on 2/24/19.
//  Copyright © 2019 Fredsta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    let delegate = UIApplication.shared.delegate
    
    let defaults = UserDefaults.standard

    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        if defaults.string(forKey: "msg") != nil {
            textView.text = defaults.string(forKey: "msg")
        }
        
        super.viewDidLoad()
        //self.textView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        //textView.text = "Hello here"
    }

    @IBAction func brownBackground(_ sender: Any) {
        view.backgroundColor = UIColor.brown
    }
    
    @IBAction func greenBackground(_ sender: Any) {
        view.backgroundColor = UIColor.green
    }
    @IBAction func purpleBackground(_ sender: Any) {
        view.backgroundColor = UIColor.purple
    }
    
    func save(){
        print(textView.text)
        
    //hvorfor er textBox.text nil? der er text i
    //jeg har slettet outletten og lavet den på ny
    //i frygt for at at referencerne ikke var iorden
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

