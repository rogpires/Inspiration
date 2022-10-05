//
//  File.swift
//  Inspiration
//
//  Created by Rogerio Pires on 22/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func nameTextField(nameTextField: UITextField) {
        var currentTimeOfDay = ""

        let hour = NSCalendar.current.component(.hour, from: NSDate() as Date)
        if hour >= 0 && hour < 12 {

            currentTimeOfDay = "Morning"

        } else if hour >= 12 && hour < 17 {

            currentTimeOfDay = "Afternoon"

        } else if hour >= 17 {

            currentTimeOfDay = "Evening"

        }

        nameLabel.text = "Good \(currentTimeOfDay) \(nameTextField)"
    }
}
