//
//  ViewController.swift
//  dateFormatterTextFieldEx
//
//  Created by mayank ranka on 31/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var date3TextField: UITextField!
    @IBOutlet weak var date2TextField: UITextField!
    @IBOutlet weak var date4TextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func date(_ sender: Any) {
        
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, MM/dd/yyyy, hh:mm:ss a"
        dateTextField.text = dateFormatter.string(from: now)
        
        dateFormatter.dateStyle = .full
        date2TextField.text = dateFormatter.string(from: now)
        
        dateFormatter.dateFormat = "EE, MM/dd/yy , hh:mm a"
        date3TextField.text = dateFormatter.string(from: now)
        
        dateFormatter.dateFormat = "MM/dd/yy, hh:mm:ss"
        date4TextField.text = dateFormatter.string(from: now)
        
    }

}

