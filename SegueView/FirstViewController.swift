//
//  ViewController.swift
//  TwoViewController
//
//  Created by Chen Wang on 12/23/17.
//  Copyright © 2017 Chen Wang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanRecieve {
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var textfield1: UITextField!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button1(_ sender: UIButton) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards"
        {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textfield1.text!
            secondVC.delegate = self
        }
    }
    
    func dataRecieved(data: String) {
        label1.text = data
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isHidden = true
    }
    
}

