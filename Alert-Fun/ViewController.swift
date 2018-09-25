//
//  ViewController.swift
//  Alert-Fun
//
//  Created by Carter, Matthew A on 9/25/18.
//  Copyright © 2018 Carter, Matthew A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet var textField: UITextField!
    
    @IBAction func buttonPressed (_ sender: UIButton) {
        print("Echo Back button pressed")
        // get text from TextField
        if let text = textField.text {
            print(text)
            // we want to show an alert or an action sheet when the user presses echo back
            // actionSheet: typically used when the user has performed a n action and they expect
            // a dialog (e.g. deleting an item and the action sheet is going to confirm the delete)
            // alert: typically used when the user does not expect it, maybe something has gone wrong
            // in the app and you need to let the user know or get thier choice
            // use a UIAlertController object to show an action sheet or an alert
            var alertController = UIAlertController(title: "Echo Back", message: "Yes", preferredStyle: .actionSheet)
            // add an action to the actionsheet/alert. We will add one for "okay"
            alertController.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            // present the actionsheet/alert via the present function
            present(alertController, animated: true, completion: nil)
        }
    }
    
    // task: in IB, add a TextField to your app, center horizontally and make it as wide as the
    // safe area margins
    // add a button that says "Echo Back"
    // add an outlet for the TextField
    // add an action for button
    // when the button is pressed simply display a log message


}


